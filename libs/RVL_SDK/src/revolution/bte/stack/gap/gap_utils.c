/******************************************************************************
 *
 *  Copyright (C) 2009-2013 Broadcom Corporation
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at:
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 ******************************************************************************/

#include <string.h>
#include "revolution/BTE/include/bt_target.h"
#include "revolution/BTE/stack/gap/gap_int.h"

/*****************************************************************************/
/*                 G L O B A L      GAP       D A T A                        */
/*****************************************************************************/
#if GAP_DYNAMIC_MEMORY == FALSE
tGAP_CB  gap_cb;
#endif

/*****************************************************************************
** Callbacks passed to BTM -
**      There are different callbacks based on the control block index so that
**      more than one command can be pending at a time.
**  NOTE:  There must be 1 callback for each control block defined
**          GAP_MAX_BLOCKS
**
**          Also, the inquiry results event has its own callback; Not handled here!
******************************************************************************/
static void btm_cback(UINT16 index, void *p_data)
{
    tGAP_INFO       *p_cb;
    tGAP_INQ_CMPL    inq_cmpl;

    /* Make sure that the index is valid AND it is in use */
    if (index < GAP_MAX_BLOCKS && gap_cb.blk[index].in_use)
    {
        p_cb = &gap_cb.blk[index];

        /* If the callback is non-NULL, call it with the specified event */
        switch (p_cb->event)
        {
        case GAP_EVT_INQUIRY_COMPLETE:
            /* pass the number of results to caller */
            inq_cmpl.num_results = ((tBTM_INQUIRY_CMPL *)p_data)->num_resp;

            inq_cmpl.status = (((tBTM_INQUIRY_CMPL *)p_data)->status == BTM_SUCCESS) ? BT_PASS : GAP_ERR_PROCESSING;

            p_data = &inq_cmpl;

            GAP_TRACE_EVENT2("   GAP Inquiry Complete Event (Status 0x%04x, Result(s) %d)",
                            inq_cmpl.status, inq_cmpl.num_results);
            break;

        case GAP_EVT_DISCOVERY_COMPLETE:
            if (*((UINT16 *) p_data))
            {
                GAP_TRACE_EVENT1("   GAP Discovery Complete Event(SDP Result: 0x%04x)", *((UINT16 *) p_data));
            }
            else
            {
                GAP_TRACE_EVENT0("   GAP Discovery Successfully Completed");
            }

            break;

        case GAP_EVT_REM_NAME_COMPLETE:
            /* override the BTM error code with a GAP error code */
            ((tGAP_REMOTE_DEV_NAME *)p_data)->status =
                    gap_convert_btm_status ((tBTM_STATUS)((tBTM_REMOTE_DEV_NAME *)p_data)->status);

            GAP_TRACE_EVENT1("   GAP Remote Name Complete Event (status 0x%04x)", ((tGAP_REMOTE_DEV_NAME *)p_data)->status);

            break;
        };

        if (p_cb->gap_cback)
            p_cb->gap_cback(p_cb->event, p_data);

        /* Deallocate the control block */
        gap_free_cb(p_cb);
    }
}


/*** Callback functions for BTM_CMPL_CB ***/
void gap_btm_cback0(void *p1)
{
    btm_cback(0, p1);
}

#if GAP_MAX_BLOCKS > 1
void gap_btm_cback1(void *p1)
{
    btm_cback(1, p1);
}
#endif
#if GAP_MAX_BLOCKS > 2
void gap_btm_cback2(void *p1)
{
    btm_cback(2, p1);
}
#endif

/* There is only one instance of this because only 1 inquiry can be active at a time */
void gap_inq_results_cb(tBTM_INQ_RESULTS *p_results, UINT8 *p_eir)
{
    tGAP_INFO   *p_cb;
    UINT8        index;

    GAP_TRACE_EVENT6 ("GAP Inquiry Results Callback (bdaddr [%02x%02x%02x%02x%02x%02x])",
                p_results->remote_bd_addr[0], p_results->remote_bd_addr[1],
                p_results->remote_bd_addr[2], p_results->remote_bd_addr[3],
                p_results->remote_bd_addr[4], p_results->remote_bd_addr[5]);
    GAP_TRACE_EVENT4 ("                             (COD [%02x%02x%02x], clkoff 0x%04x)",
                p_results->dev_class[0], p_results->dev_class[1], p_results->dev_class[2],
                p_results->clock_offset);

    /* Find the control block which has an Inquiry Active and call its results callback */
    for (index = 0, p_cb = &gap_cb.blk[0]; index < GAP_MAX_BLOCKS; index++, p_cb++)
    {
        /* Look for the control block that is using inquiry */
        if (p_cb->in_use && (p_cb->event == GAP_EVT_INQUIRY_COMPLETE))
        {
            /* Notify the higher layer if they care */
            if (p_cb->gap_inq_rslt_cback)
                p_cb->gap_inq_rslt_cback (GAP_EVT_INQUIRY_RESULTS, (tGAP_INQ_RESULTS *)p_results);
        }
    }
}


/*******************************************************************************
**
** Function         gap_find_addr_name_cb
**
** Description      Processes the remote name request event when the Find Addr by Name
**                  request is active.  The following procedure takes place:
**                  1. Check the resulting name (If return status is ok)
**                  2. If name matches requested name, we're done, call the appl's callback
**                          with the BD ADDR.
**                  3. Otherwise get the next BD ADDR out of the inquiry database and intiate
**                          another remote name request.
**                  4. If there are no more BD ADDRs, then call the appl's callback with a FAIL
**                          status.
**
** Returns          void
**
*******************************************************************************/
void gap_find_addr_name_cb (tBTM_REMOTE_DEV_NAME *p)
{
    tGAP_FINDADDR_CB        *p_cb = &gap_cb.findaddr_cb;
    tGAP_FINDADDR_RESULTS   *p_result = &p_cb->results;

    if (p_cb->in_use)
    {
        if (p->status == BTM_SUCCESS)
        {
            GAP_TRACE_EVENT2("   GAP: FindAddrByName Rem Name Cmpl Evt (Status 0x%04x, Name [%s])",
                                p->status, p->remote_bd_name);

            /* See if the returned name matches the desired name; if not initiate another search */
            if (!strncmp ((char *)p_result->devname, (char *) p->remote_bd_name, strlen ((char *) p_result->devname)))
            {
                /* We found the device!  Copy it into the return structure */
                memcpy (p_result->bd_addr, p_cb->p_cur_inq->results.remote_bd_addr, BD_ADDR_LEN);
                p_result->status = BT_PASS;
            }
            else    /* The name doesn't match so initiate another search */
            {
                /* Get the device address of the next database entry */
                if ((p_cb->p_cur_inq = BTM_InqDbNext(p_cb->p_cur_inq)) != NULL)
                {
                    if ((BTM_ReadRemoteDeviceName (p_cb->p_cur_inq->results.remote_bd_addr,
                        (tBTM_CMPL_CB *) gap_find_addr_name_cb)) == BTM_CMD_STARTED)
                        return;     /* This routine will get called again with the next results */
                    else
                        p_result->status = gap_convert_btm_status ((tBTM_STATUS) p->status);
                }
                else
                    p_result->status = GAP_EOINQDB;     /* No inquiry results; we're done! */
            }
        }
        else
        {
            GAP_TRACE_EVENT1("   GAP: FindAddrByName Rem Name Cmpl Evt (Status 0x%04x)", p->status);
            p_result->status = gap_convert_btm_status ((tBTM_STATUS) p->status);
        }

        /* If this code is reached, the process has completed so call the appl's callback with results */
        if (p_cb->p_cback)
            p_cb->p_cback (GAP_EVT_FIND_ADDR_COMPLETE, (tGAP_FINDADDR_RESULTS *) p_result);

        /* Clear out the control block */
        p_cb->in_use = FALSE;
        p_cb->p_cback = (tGAP_CALLBACK *) NULL;
    }
}

/*******************************************************************************
**
** Function         gap_find_addr_inq_cb
**
** Description      Processes the inquiry complete event when the Find Addr by Name
**                  request is active.  This callback performs one of the two following
**                  steps:
**                      1. If the remote name is retrieved automatically, the DB is searched
**                          immediately, and the results are returned in the appls callback.
**
**                      2. If remote name is not automatic, retrieve the first BTM INQ
**                         database entry and initiate a remote name request.
**
** Returns          void
**
*******************************************************************************/
void gap_find_addr_inq_cb (tBTM_INQUIRY_CMPL *p)
{
    tGAP_FINDADDR_CB        *p_cb = &gap_cb.findaddr_cb;
    tGAP_FINDADDR_RESULTS   *p_result = &p_cb->results;

    if (p_cb->in_use)
    {

        GAP_TRACE_EVENT2("   GAP: FindAddrByName Inq Cmpl Evt (Status 0x%04x, Result(s) %d)",
            p->status, p->num_resp);

        if (p->status == BTM_SUCCESS)
        {
            /* Step 1: If automatically retrieving remote names then search the local database */
            if ((p_result->status = gap_find_local_addr_by_name (p_result->devname, p_result->bd_addr)) == GAP_NO_DATA_AVAIL)
            {
                /* Step 2:  The name is not stored automatically, so a search of all devices needs to
                 *          be initiated.
                 */
                if ((p_cb->p_cur_inq = BTM_InqDbFirst()) != NULL)
                {
                    if ((BTM_ReadRemoteDeviceName (p_cb->p_cur_inq->results.remote_bd_addr,
                        (tBTM_CMPL_CB *) gap_find_addr_name_cb)) == BTM_CMD_STARTED)
                        return;     /* Wait for the response in gap_find_addr_name_cb() */
                    else
                        p_result->status = gap_convert_btm_status (p->status);
                }
                else
                    p_result->status = GAP_EOINQDB;     /* No inquiry results; we're done! */
            }
        }
        else
            p_result->status = gap_convert_btm_status (p->status);

        /* If this code is reached, the process has completed so call the appl's callback with results */
        if (p_cb->p_cback)
            p_cb->p_cback (GAP_EVT_FIND_ADDR_COMPLETE, (tGAP_FINDADDR_RESULTS *) p_result);

        /* Clear out the control block */
        p_cb->in_use = FALSE;
        p_cb->p_cback = (tGAP_CALLBACK *) NULL;
    }
}

/*******************************************************************************
**
** Function         gap_find_local_addr_by_name
**
** Description      Searches through the internal inquiry database for a device
**                  that has the same name as the one passed in.  If found, the
**                  device address is filled in.
**
**                  NOTE:  It only searches up to the first BTM_MAX_REM_BD_NAME_LEN
**                          bytes because the inquiry database uses tBTM_BD_NAME.
**
** Returns          BT_PASS if the name was found and the device address is filled in
**                  GAP_EOINQDB if the name was not found in the database
**                  GAP_NO_DATA_AVAIL if the name is not saved with the inquiry
**
*******************************************************************************/
UINT16 gap_find_local_addr_by_name (const tBTM_BD_NAME devname, BD_ADDR bd_addr)
{

/* If the remote name is retrieved automatically during an inquiry search the local db */
#if (BTM_INQ_GET_REMOTE_NAME == TRUE)
    tBTM_INQ_INFO   *p_result;

    p_result = BTM_InqDbFirst();

    while (p_result)
    {
        /* Check the entry for a device name match */
        if (!strncmp ((char *)devname, (char *)p_result->remote_name, BTM_MAX_REM_BD_NAME_LEN))
        {
            memcpy (bd_addr, p_result->results.remote_bd_addr, BD_ADDR_LEN);
            return (BT_PASS);
        }
        else
            p_result = BTM_InqDbNext(p_result);
    };

    return (GAP_EOINQDB);
#else
    /* No data available because we are not automatically saving the data */
    return (GAP_NO_DATA_AVAIL);
#endif
}


/*******************************************************************************
**
** Function         gap_allocate_cb
**
** Description      Look through the GAP Control Blocks for a free one.
**
** Returns          Pointer to the control block or NULL if not found
**
*******************************************************************************/
tGAP_INFO *gap_allocate_cb (void)
{
    tGAP_INFO     *p_cb = &gap_cb.blk[0];
    UINT8        x;

    for (x = 0; x < GAP_MAX_BLOCKS; x++, p_cb++)
    {
        if (!p_cb->in_use)
        {
            memset (p_cb, 0, sizeof (tGAP_INFO));

            p_cb->in_use = TRUE;
            p_cb->index = x;
            p_cb->p_data = (void *)NULL;
            return (p_cb);
        }
    }

    /* If here, no free control blocks found */
    return (NULL);
}


/*******************************************************************************
**
** Function         gap_free_cb
**
** Description      Release GAP control block.
**
** Returns          Pointer to the control block or NULL if not found
**
*******************************************************************************/
void gap_free_cb (tGAP_INFO *p_cb)
{
    if (p_cb)
    {
        p_cb->gap_cback = NULL;
        p_cb->in_use = FALSE;
    }
}


/*******************************************************************************
**
** Function         gap_is_service_busy
**
** Description      Look through the GAP Control Blocks that are in use
**                  and check to see if the event waiting for is the command
**                  requested.
**
** Returns          TRUE if already in use
**                  FALSE if not busy
**
*******************************************************************************/
BOOLEAN gap_is_service_busy (UINT16 request)
{
    tGAP_INFO   *p_cb = &gap_cb.blk[0];
    UINT8        x;

    for (x = 0; x < GAP_MAX_BLOCKS; x++, p_cb++)
    {
        if (p_cb->in_use && p_cb->event == request)
            return (TRUE);
    }

    /* If here, service is not busy */
    return (FALSE);
}


/*******************************************************************************
**
** Function         gap_convert_btm_status
**
** Description      Converts a BTM error status into a GAP error status
**
**
** Returns          GAP_UNKNOWN_BTM_STATUS is returned if not recognized
**
*******************************************************************************/
UINT16 gap_convert_btm_status (tBTM_STATUS btm_status)
{
    switch (btm_status)
    {
    case BTM_SUCCESS:
        return (BT_PASS);

    case BTM_CMD_STARTED:
        return (GAP_CMD_INITIATED);

    case BTM_BUSY:
        return (GAP_ERR_BUSY);

    case BTM_MODE_UNSUPPORTED:
    case BTM_ILLEGAL_VALUE:
        return (GAP_ERR_ILL_PARM);

    case BTM_WRONG_MODE:
        return (GAP_DEVICE_NOT_UP);

    case BTM_UNKNOWN_ADDR:
        return (GAP_BAD_BD_ADDR);

    case BTM_DEVICE_TIMEOUT:
        return (GAP_ERR_TIMEOUT);

    default:
        return (GAP_ERR_PROCESSING);
    }
}
