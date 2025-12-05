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
#include "revolution/BTE/stack/btm/btm_int.h"
#include "revolution/BTE/gki/common/gki.h"
#include "revolution/BTE/stack/include/btu.h"

/*******************************************************************************
**
** Function         GAP_SetDiscoverableMode
**
** Description      This function is called to allow or disallow a service to
**                  discovered (Inquiry Scans).
**
** Parameters:      mode        - GAP_NON_DISCOVERABLE, GAP_LIMITED_DISCOVERABLE,
**                                  or GAP_GENERAL_DISCOVERABLE
**
**                  duration    - Amount of time for the duration of an inquiry scan.
**                                The step size is in 0.625 msec intervals.
**                                Range: 0x0012 - 0x1000 (11.25 - 2560 msecs)
**
**                                If a value of '0' is entered the default of
**                                0x0012 (11.25 msecs) will be used.
**                                Note: The duration must be less than or equal to
**                                the interval.
**
**                  interval    - Amount of time between the start of two inquiry scans.
**                                The step size is in 0.625 msec intervals.
**                                Range: 0x0012 - 0x1000 (11.25 - 2560 msecs)
**                                If a value of '0' is entered the default of
**                                0x800 (1.28 secs) will be used.
**
**
** Returns          BT_PASS (0) if successful,
**                  GAP_ERR_ILL_PARM if a bad parameter is detected,
**                  GAP_DEVICE_NOT_UP if the device is not active,
**                  GAP_ERR_PROCESSING if not enough resources to carry out request
**
*******************************************************************************/
UINT16 GAP_SetDiscoverableMode (UINT16 mode, UINT16 duration, UINT16 interval)
{
    tBTM_STATUS status;

    status = BTM_SetDiscoverability(mode, duration, interval);

    return (gap_convert_btm_status (status));
}


/*******************************************************************************
**
** Function         GAP_ReadDiscoverableMode
**
** Description      This function is called to retrieve the current discoverable mode
**                  for the local device.
**
** Parameters:      duration    - pointer to the amount of time of an inquiry scan.
**                                The step size is in 0.625 msec intervals.
**                                Range: 0x0012 - 0x1000 (11.25 - 2560 msecs)
**
**                  interval    - pointer to the amount of time between the start of
**                                two inquiry scans.
**                                The step size is in 0.625 msec intervals.
**                                Range: 0x0012 - 0x1000 (11.25 - 2560 msecs)
**
**
** Returns          GAP_NON_DISCOVERABLE, GAP_LIMITED_DISCOVERABLE, or
**                  GAP_GENERAL_DISCOVERABLE
**
*******************************************************************************/
UINT16 GAP_ReadDiscoverableMode (UINT16 *duration, UINT16 *interval)
{
    return (BTM_ReadDiscoverability(duration, interval));
}


/*******************************************************************************
**
** Function         GAP_SetConnectableMode
**
** Description      This function is called to allow or disallow a
**                  connections on the local device.
**
** Parameters:      mode        - GAP_NON_CONNECTABLE, GAP_CONNECTABLE,
**
**                  duration    - Amount of time for the duration of a page scan.
**                                The step size is in 0.625 msec intervals.
**                                Range: 0x0012 - 0x1000 (11.25 - 2560 msecs)
**
**                                If a value of '0' is entered the default of
**                                0x0012 (11.25 msecs) will be used.
**                                Note: The duration must be less than or equal to
**                                the interval.
**
**                  interval    - Amount of time between the start of two page scans.
**                                The step size is in 0.625 msec intervals.
**                                Range: 0x0012 - 0x1000 (11.25 - 2560 msecs)
**                                If a value of '0' is entered the default of
**                                0x800 (1.28 secs) will be used.
**
**
** Returns          BT_PASS (0) if successful,
**                  GAP_ERR_ILL_PARM if a bad parameter is detected,
**                  GAP_DEVICE_NOT_UP if the device is not active,
**                  GAP_ERR_PROCESSING if not enough resources to carry out request
**
*******************************************************************************/
UINT16 GAP_SetConnectableMode (UINT16 mode, UINT16 duration, UINT16 interval)
{
    tBTM_STATUS status;

    status = BTM_SetConnectability(mode, duration, interval);

    return (gap_convert_btm_status (status));
}


/*******************************************************************************
**
** Function         GAP_FindAddrByName
**
** Description      This function is called to retrieve a device address given
**                  a device name.  It first looks in the current local inquiry
**                  database for the device with the specified name.  If not found
**                  it initiates a general inquiry.  Upon completion, it retrieves
**                  the name for each device until a match is found or all devices
**                  have been checked.  Note:  This process can take a while to
**                  complete.
**
** Parameters:      devname -
**
**                  inqparms - pointer to the inquiry information
**                      mode - GAP_GENERAL_INQUIRY or GAP_LIMITED_INQUIRY inquiry
**                      duration - length in 1.28 sec intervals
**                      max_resps - maximum amount of devices to search for before ending the inquiry
**                      filter_cond_type - GAP_CLR_INQUIRY_FILTER, GAP_FILTER_COND_DEVICE_CLASS, or
**                                         GAP_FILTER_COND_BD_ADDR
**                      filter_cond - value for the filter (based on filter_cond_type)
**
**
** Returns          BT_PASS if the name was immediately available.  (BD_ADDR is returned)
**                  GAP_CMD_INITIATED if an inquiry has been initiated
**
*******************************************************************************/
UINT16 GAP_FindAddrByName (BD_NAME devname, tGAP_INQ_PARMS *p_inq_parms, tGAP_CALLBACK *p_addr_cb,
                           BD_ADDR bd_addr)
{
    UINT16           status;
    tBTM_STATUS      btm_status;


    /* If the remote name is retrieved automatically during an inquiry search the local db first */
    if ((status = gap_find_local_addr_by_name (devname, bd_addr)) != BT_PASS)
    {
        /* If this code is used, the name wasn't in the current inquiry database */
        /* A general inquiry must now be initiated */
        if (gap_cb.findaddr_cb.in_use == FALSE)
        {
            gap_cb.findaddr_cb.p_cback = p_addr_cb;
            gap_cb.findaddr_cb.p_cur_inq = (tBTM_INQ_INFO *) NULL;     /* Reset to the beginning of the database */
            BCM_STRNCPY_S ((char *)gap_cb.findaddr_cb.results.devname, sizeof(gap_cb.findaddr_cb.results.devname), (char *)devname, BTM_MAX_REM_BD_NAME_LEN);

            /* make sure we have an end of string char */
            gap_cb.findaddr_cb.results.devname[BTM_MAX_REM_BD_NAME_LEN] = 0;

            btm_status = BTM_StartInquiry (p_inq_parms, (tBTM_INQ_RESULTS_CB *) NULL,
                    (tBTM_CMPL_CB *) gap_find_addr_inq_cb);
                gap_cb.findaddr_cb.in_use = TRUE;

            /* convert the error code into a GAP code and check the results for any errors */
            if ((status = gap_convert_btm_status (btm_status)) == GAP_CMD_INITIATED)
                gap_cb.findaddr_cb.in_use = TRUE;
        }
        else
            status = GAP_ERR_BUSY;
    }

    return (status);
}


/*******************************************************************************
**
** Function         GAP_ReadConnectableMode
**
** Description      This function is called to retrieve the current connectability
**                  mode for the local device.
**
** Parameters:      duration    - pointer to the amount of time of an page scan.
**                                The step size is in 0.625 msec intervals.
**                                Range: 0x0012 - 0x1000 (11.25 - 2560 msecs)
**
**                  interval    - pointer to the amount of time between the start of
**                                two page scans.
**                                The step size is in 0.625 msec intervals.
**                                Range: 0x0012 - 0x1000 (11.25 - 2560 msecs)
**
**
** Returns          GAP_NON_CONNECTABLE, GAP_CONNECTABLE
**
*******************************************************************************/

UINT16 GAP_ReadConnectableMode (UINT16 *duration, UINT16 *interval)
{
    return (BTM_ReadConnectability(duration, interval));
}


/*******************************************************************************
**
** Function         GAP_SetSecurityMode
**
** Description      Set security mode for the device
**
** Returns          void
**
*******************************************************************************/
void GAP_SetSecurityMode (UINT8 sec_mode)
{
    BTM_SetSecurityMode (sec_mode);
}


/*******************************************************************************
**
** Function         GAP_Bond
**
** Description      This function is called to perform bonding with peer device
**
** Parameters:      bd_addr      - Address of the device to bond
**                  pin_len      - length in bytes of the PIN Code
**                  p_pin        - pointer to array with the PIN Code
**                  trusted_mask - bitwise OR of trusted services (array of UINT32)
**
*******************************************************************************/
UINT8 GAP_Bond (BD_ADDR bd_addr, UINT8 pin_len, UINT8 *p_pin, UINT32 trusted_mask[])
{
    return ((UINT8) BTM_SecBond (bd_addr, pin_len, p_pin, trusted_mask));
}


/*******************************************************************************
**
** Function         GAP_SecRegister
**
** Description      Application manager calls this function to register for
**                  security services.  There can be one and only one application
**                  saving link keys.  BTM allows only first registration.
**
** Returns          TRUE if registered OK, else FALSE
**
*******************************************************************************/
BOOLEAN  GAP_SecRegister (tBTM_APPL_INFO *p_cb_info)
{
    return (BTM_SecRegister (p_cb_info));
}


/*******************************************************************************
**
** Function         GAP_PinRsp
**
** Description      This function is called from UI after Security Manager submitted
**                  PIN code request.
**
** Parameters:      bd_addr      - Address of the device for which PIN was requested
**                  res          - result of the operation BTM_SUCCESS if success
**                  pin_len      - length in bytes of the PIN Code
**                  p_pin        - pointer to array with the PIN Code
**                  trusted_mask - bitwise OR of trusted services (array of UINT32)
**
*******************************************************************************/
void GAP_PinRsp (BD_ADDR bd_addr, UINT8 res, UINT8 pin_len, UINT8 *p_pin, UINT32 trusted_mask[])
{
    BTM_PINCodeReply (bd_addr, res, pin_len, p_pin, trusted_mask);
}


/*******************************************************************************
**
** Function         GAP_AuthorizeRsp
**
** Description      This function is called from UI after Security Manager submitted
**                  authorization request
**
** Parameters:      bd_addr      - Address of the device for which PIN was requested
**                  res          - result of the operation BTM_SUCCESS if success
**                  trusted_mask - bitwise OR of trusted services (array of UINT32)
**
*******************************************************************************/
void GAP_AuthorizeRsp (BD_ADDR bd_addr, UINT8 res, UINT32 trusted_mask[])
{
    BTM_DeviceAuthorized (bd_addr, res, trusted_mask);
}


/*******************************************************************************
**
** Function         GAP_SetPairableMode
**
** Description      This function is called to allow or disallow pairing
**                  on the local device.
**
** Parameters:      mode        - GAP_ALLOW_PAIRING, GAP_DISALLOW_PAIRING
**                  connect_only_pairable - TRUE or FALSE connect only to paired devices
**
**                  callback    - The callback is called when a pin number is requested.
**
** Returns          BT_PASS (0) if successful, or a non-zero error code
**
*******************************************************************************/

UINT16 GAP_SetPairableMode (UINT16 mode, BOOLEAN connect_only_paired)
{
    tBTM_STATUS btm_status;
    UINT16      status = BT_PASS;

    if (mode == GAP_ALLOW_PAIRING)
    {
        btm_status = BTM_SetConnectability(BTM_CONNECTABLE, 0, 0);

        if ((status = gap_convert_btm_status (btm_status)) == BT_PASS)
            BTM_SetPairableMode (TRUE, connect_only_paired);
    }
    else if (mode == GAP_DISALLOW_PAIRING)
    {
        BTM_SetPairableMode (FALSE, connect_only_paired);
    }
    else
    {
        GAP_TRACE_ERROR1 ("GAP_SetPairableMode: illegal mode %d", mode);
        status = GAP_ERR_ILL_MODE;
    }
    return (status);
}


/*******************************************************************************
**
** Function         GAP_StartInquiry
**
** Description      This function initiates a single inquiry.
**
** Parameters:      p_inqparms - pointer to the inquiry information
**                      mode - GAP_GENERAL_INQUIRY or GAP_LIMITED_INQUIRY inquiry
**                      duration - length in 1.28 sec intervals
**                      max_resps - maximum amount of devices to search for before ending the inquiry
**                      filter_cond_type - GAP_CLR_INQUIRY_FILTER, GAP_FILTER_COND_DEVICE_CLASS, or
**                                         GAP_FILTER_COND_BD_ADDR
**                      filter_cond - value for the filter (based on filter_cond_type)
**
**                  p_results_cb - Pointer to the callback routine which gets called
**                                 upon receipt of an inquiry result. If this field is
**                                 NULL, the application is not notified.
**
**                  p_cmpl_cb   - Pointer to the callback routine which gets called
**                                upon completion.  If this field is NULL, the
**                                application is not notified when completed.
**
**
** Returns          BT_PASS (0) if successful,
**                  GAP_ERR_ILL_MODE if a bad mode parameter was passed
**                  GAP_ERR_ILL_INQ_TIME if a bad interval or duration was passed
**                  GAP_ERR_NO_CTRL_BLK if out of control blocks
**                  GAP_ERR_ILL_PARM if a bad parameter was detected in BTM
**                  GAP_ERR_BUSY if the device already has an iquiry active
**                  GAP_DEVICE_NOT_UP if the device is not initialized yet
**                  GAP_ERR_PROCESSING if any other BTM error was returned
**
*******************************************************************************/
UINT16 GAP_StartInquiry (tGAP_INQ_PARMS *p_inq_parms, tGAP_CALLBACK *p_results_cb, tGAP_CALLBACK *p_cmpl_cb)
{
    tGAP_INFO   *p_cb;
    tBTM_STATUS  btm_status;
    UINT16       retval;

    /*** Make sure the parameters are valid before continuing ***/
    if (p_inq_parms->mode != GAP_GENERAL_INQUIRY && p_inq_parms->mode != GAP_LIMITED_INQUIRY)
        return (GAP_ERR_ILL_MODE);

    if (p_inq_parms->duration < GAP_MIN_INQUIRY_LEN   ||
        p_inq_parms->duration > GAP_MAX_INQUIRY_LENGTH)
        return (GAP_ERR_ILL_INQ_TIME);

    /*** get a control block for this operation ***/
    if ((p_cb = gap_allocate_cb()) != NULL)
    {
        p_cb->gap_cback = p_cmpl_cb;
        p_cb->gap_inq_rslt_cback = p_results_cb;
        p_cb->event = GAP_EVT_INQUIRY_COMPLETE; /* Return event expected */

        btm_status = BTM_StartInquiry(p_inq_parms, gap_inq_results_cb,
                        (tBTM_CMPL_CB *) gap_cb.btm_cback[p_cb->index]);

        /* convert the error code into a GAP code and check the results for any errors */
        if ((retval = gap_convert_btm_status (btm_status)) != GAP_CMD_INITIATED)
            gap_free_cb(p_cb);      /* Error starting the inquiry */
    }
    else
        retval = GAP_ERR_NO_CTRL_BLK;

    return (retval);
}


/*******************************************************************************
**
** Function         GAP_StartPeriodicInquiry
**
** Description      This function initiates a periodic inquiry.
**
** Parameters:      p_inqparms - pointer to the inquiry information
**                      mode - GAP_GENERAL_INQUIRY or GAP_LIMITED_INQUIRY inquiry
**                      duration - length in 1.28 sec intervals
**                      max_resps - maximum amount of devices to search for before ending the inquiry
**                      filter_cond_type - GAP_CLR_INQUIRY_FILTER, GAP_FILTER_COND_DEVICE_CLASS, or
**                                         GAP_FILTER_COND_BD_ADDR
**                      filter_cond - value for the filter (based on filter_cond_type)
**
**                  min_time    - Minimum amount of time between consecutive inquiries.
**                                The value is in 1.28 second intervals.
**                                Range: 0x0002 - 0xFFFE (2.56 - 83883.52 seconds)
**
**                  max_time    - Maximum amount of time between consecutive inquiries.
**                                The value is in 1.28 sec intervals.
**                                Range: 0x0003 - 0xFFFF (3.84 - 83884.8 seconds)
**
**                  p_results_cb - Pointer to the callback routine which gets called
**                                 upon receipt of an inquiry result. If this field is
**                                 NULL, the application is not notified.
**
**
** Returns          BT_PASS (0) if successful,
**                  GAP_ERR_ILL_MODE if a bad mode parameter was passed
**                  GAP_ERR_ILL_INQ_TIME if a bad interval or duration was passed
**                  GAP_ERR_NO_CTRL_BLK if out of control blocks
**                  GAP_ERR_ILL_PARM if a bad parameter was detected in BTM
**                  GAP_ERR_BUSY if the device already has an iquiry active
**                  GAP_DEVICE_NOT_UP if the device is not initialized yet
**                  GAP_ERR_PROCESSING if any other BTM error was returned
**
*******************************************************************************/

UINT16 GAP_StartPeriodicInquiry (tGAP_INQ_PARMS *p_inq_parms, UINT16 min_time,
                                 UINT16 max_time, tGAP_CALLBACK *p_results_cb)
{
    tGAP_INFO   *p_cb;
    tBTM_STATUS  btm_status;
    UINT16       retval = BT_PASS;

    /*** Make sure the parameters are valid before continuing ***/
    if (p_inq_parms->mode != GAP_GENERAL_INQUIRY && p_inq_parms->mode != GAP_LIMITED_INQUIRY)
        return (GAP_ERR_ILL_MODE);

    if (p_inq_parms->duration < GAP_MIN_INQUIRY_LEN     ||
        p_inq_parms->duration > GAP_MAX_INQUIRY_LENGTH  ||
        min_time <= p_inq_parms->duration               ||
        min_time < GAP_PER_INQ_MIN_MIN_PERIOD           ||
        min_time > GAP_PER_INQ_MAX_MIN_PERIOD           ||
        max_time <= min_time                            ||
        max_time < GAP_PER_INQ_MIN_MAX_PERIOD)
    {
        return (GAP_ERR_ILL_INQ_TIME);
    }

    /*** get a control block for this operation ***/
    if ((p_cb = gap_allocate_cb()) != NULL)
    {
        p_cb->gap_inq_rslt_cback = p_results_cb;
        p_cb->event = GAP_EVT_INQUIRY_COMPLETE; /* mark the inquiry event active */

        btm_status = BTM_SetPeriodicInquiryMode(p_inq_parms, max_time, min_time,
                                                gap_inq_results_cb);

        /* convert the error code into a GAP code and check the results for any errors */
        if ((retval = gap_convert_btm_status (btm_status)) != GAP_CMD_INITIATED)
            gap_free_cb(p_cb);      /* Error starting the inquiry */
    }
    else
        retval = GAP_ERR_NO_CTRL_BLK;

    return (retval);
}


/*******************************************************************************
**
** Function         GAP_CancelInquiry
**
** Description      This function cancels a single inquiry (if in progress)
**
** Parameters:      None
**
** Returns          BOOLEAN (TRUE if successful, otherwise FALSE)
**
*******************************************************************************/
UINT16 GAP_CancelInquiry(void)
{
    tGAP_INFO   *p_cb = &gap_cb.blk[0];
    UINT8        x;
    tBTM_STATUS  btm_status;
    UINT16       status;

    btm_status = BTM_CancelInquiry();
    if ((status = gap_convert_btm_status (btm_status)) == BT_PASS)
    {
        /* Free the control block that is waiting for the inquiry complete event */
        for (x = 0; x < GAP_MAX_BLOCKS; x++, p_cb++)
        {
            if (p_cb->in_use && p_cb->event == GAP_EVT_INQUIRY_COMPLETE)
            {
                gap_free_cb(p_cb);
                return (BT_PASS);
            }
        }

        /* If here the control block was not found */
        status = GAP_ERR_NO_CTRL_BLK;
    }

    return (status);
}


/*******************************************************************************
**
** Function         GAP_CancelPeriodicInquiry
**
** Description      This function cancels a periodic inquiry (if in progress)
**
** Parameters:      None
**
** Returns          BOOLEAN: (TRUE if successful, otherwise FALSE)
**
*******************************************************************************/
UINT16 GAP_CancelPeriodicInquiry(void)
{
    tGAP_INFO   *p_cb = &gap_cb.blk[0];
    UINT8        x;
    tBTM_STATUS  btm_status;
    UINT16       status;

    btm_status = BTM_CancelPeriodicInquiry();
    if ((status = gap_convert_btm_status (btm_status)) == BT_PASS)
    {
        /* Free the control block that is waiting for the inquiry complete event */
        for (x = 0; x < GAP_MAX_BLOCKS; x++, p_cb++)
        {
            if (p_cb->in_use && p_cb->event == GAP_EVT_INQUIRY_COMPLETE)
            {
                gap_free_cb(p_cb);
                return (BT_PASS);
            }
        }

        /* If here the control block was not found */
        status = GAP_ERR_NO_CTRL_BLK;
    }

    return (status);
}


/*******************************************************************************
**
** Function         GAP_GetFirstInquiryResult
**
** Description      This function retrieves the first valid inquiry result.
**
** Parameters:      p_results - pointer to the inquiry results
**
** Returns          BT_PASS (0) if successful, or a non-zero error code
**                  GAP_EOINQDB if no more entries in the database.
**
*******************************************************************************/
UINT16 GAP_GetFirstInquiryResult(tGAP_INQ_RESULTS *p_results)
{
    UINT8 *ptr;

    gap_cb.cur_inqptr = BTM_InqFirstResult();

    if (gap_cb.cur_inqptr != NULL)
    {
        memcpy(p_results, &gap_cb.cur_inqptr->results, sizeof(tBTM_INQ_RESULTS));

        ptr = (UINT8 *)gap_cb.cur_inqptr->results.remote_bd_addr;
        GAP_TRACE_EVENT6("GAP_GetFirstInqResult %02x%02x%02x%02x%02x%02x",
                    ptr[0],ptr[1],ptr[2],ptr[3],ptr[4],ptr[5]);
        return(BT_PASS);
    }
    else
    {
        GAP_TRACE_EVENT0("GAP_FirstInqResults:  No BD_ADDRs Found");
        memset(p_results, 0, sizeof(tBTM_INQ_RESULTS));
        return(GAP_EOINQDB);
    }
}


/*******************************************************************************
**
** Function         GAP_GetNextInquiryResult
**
** Description      This function retrieves the next valid inquiry result.
**
** Parameters:      p_results  - pointer to the inquiry results
**
** Returns          BT_PASS (0) if successful, or a non-zero status code
**                  GAP_EOINQDB if no more entries in the database.
**
*******************************************************************************/
UINT16 GAP_GetNextInquiryResult(tGAP_INQ_RESULTS *p_results)
{
    UINT8 *ptr;

    /*** if the current inquiry db pointer is NULL then call the first entry ***/
    if (gap_cb.cur_inqptr)
    {
        gap_cb.cur_inqptr = BTM_InqNextResult(gap_cb.cur_inqptr);
        if (gap_cb.cur_inqptr != NULL)
        {
            memcpy(p_results, &gap_cb.cur_inqptr->results,
                   sizeof(tGAP_INQ_RESULTS));

            ptr = (UINT8 *)gap_cb.cur_inqptr->results.remote_bd_addr;
            GAP_TRACE_EVENT6("GAP_GetNextInqResult %02x%02x%02x%02x%02x%02x",
                        ptr[0],ptr[1],ptr[2],ptr[3],ptr[4],ptr[5]);

            return(BT_PASS);
        }
        else
        {
            GAP_TRACE_EVENT0("GAP_NextInqResults:  No BD_ADDRs Found");
            memset(p_results, 0, sizeof(tBTM_INQ_RESULTS));
            return(GAP_EOINQDB);
        }
    }
    else
        return (GAP_GetFirstInquiryResult(p_results));
}


/*******************************************************************************
**
** Function         GAP_ReadLocalDeviceInfo
**
** Description      This function retrieves local device information to the caller.
**
** Parameters:      name        - (output) pointer to the UTF-8 encoded string representing
**                                the device name.
**
**                  addr        - (output) pointer to the Bluetooth device address (BD_ADDR).
**
**                  verinfo     - (output) pointer to the LMP version information.
**
**                  features    - (output) pointer to the LMP features for the device.
**
**                  NOTE:  Return parameters that are set to NULL are not retrieved.
**
** Returns          BT_PASS (0) if successful, or a non-zero error code
**
*******************************************************************************/

UINT16 GAP_ReadLocalDeviceInfo(UINT8 *name, BD_ADDR *addr, tGAP_LMP_VERSION *verinfo,
                               tGAP_LMP_FEATURES *features)
{
    return (GAP_UNSUPPORTED);
}



/*******************************************************************************
**
** Function         GAP_GetRemoteDeviceName
**
** Description      The remote name is retrieved from the specified remote device.  If
**                  GAP_CMD_INITIATED is returned by the function, the command was
**                  successfully sent to the controller.  The GAP_EVT_NAME_RESP event
**                  is passed in the callback when the remote device name has been retrieved.
**
** Parameters:      addr        - The Bluetooth device address (BD_ADDR) of the remote
**                                device.
**
**                  callback    - pointer to the callback which is called after the
**                                remote device has been retrieved.
**                                p_data in the callback points to the structure containing the
**                                status, device name length, and the UTF-8 encoded
**                                device name. (type tBTM_REMOTE_DEV_NAME)
**                                The event field in the callback is set to GAP_EVT_REM_NAME_COMPLETE.
**  The callback is not called unless (GAP_CMD_INITIATED) is returned.
**
**
** Returns
**                  GAP_CMD_INITIATED if remote search successfully initiated
**                  GAP_ERR_BUSY if a remote name request is already in progress,
**                  GAP_ERR_NO_CTRL_BLK if out of control blocks (too many commands pending)
**                  GAP_BAD_BD_ADDR if the device address is bad,
**                  GAP_DEVICE_NOT_UP if the device has not been initialized yet
**                  GAP_ERR_PROCESSING if any other BTM error has been returned
**
*******************************************************************************/
UINT16 GAP_GetRemoteDeviceName (BD_ADDR addr, tGAP_CALLBACK *callback)
{
    tGAP_INFO   *p_cb;
    UINT16       retval;
    tBTM_STATUS  btm_status;

    if ((p_cb = gap_allocate_cb()) != NULL)
    {
        p_cb->gap_cback = callback;
        p_cb->event = GAP_EVT_REM_NAME_COMPLETE;     /* Return event expected */

        btm_status = BTM_ReadRemoteDeviceName (addr, gap_cb.btm_cback[p_cb->index]);

        /* If the name was not returned immediately, or if an error occurred, release the control block */
        if ((retval = gap_convert_btm_status (btm_status)) != GAP_CMD_INITIATED)
            gap_free_cb (p_cb);
    }
    else
        retval = GAP_ERR_NO_CTRL_BLK;

    return (retval);
}

/*******************************************************************************
**
** Function         GAP_SetDeviceClass
**
** Description      This function updates the local Device Class.
**
** Parameters:
**                  p_cod   - Pointer to the device class to set to
**
**                  cmd     - the fields of the device class to update.
**                            GAP_SET_COD_MAJOR_MINOR, - overwrite major, minor class
**                            GAP_SET_COD_SERVICE_CLASS - set the bits in the input
**                            GAP_CLR_COD_SERVICE_CLASS - clear the bits in the input
**                            GAP_SET_COD_ALL - overwrite major, minor, set the bits in service class
**                            GAP_INIT_COD - overwrite major, minor, and service class
**
** Returns          BT_PASS (0) if successful,
**                  GAP_ERR_BUSY if a discovery is already in progress
**                  GAP_ERR_ILL_PARM if an illegal parameter was detected
**                  GAP_ERR_PROCESSING if any other BTM error has been returned
**
*******************************************************************************/
UINT16 GAP_SetDeviceClass(tGAP_COD *p_cod, UINT8 cmd)
{
    tBTM_STATUS btm_status;
    UINT8 *dev;
    UINT16 service;
    UINT8  minor, major;
    DEV_CLASS dev_class;

    dev = BTM_ReadDeviceClass();
    BTM_COD_SERVICE_CLASS( service, dev );
    BTM_COD_MINOR_CLASS(minor, dev );
    BTM_COD_MAJOR_CLASS(major, dev );

    switch(cmd)
    {
    case GAP_SET_COD_MAJOR_MINOR:
        minor = p_cod->minor & BTM_COD_MINOR_CLASS_MASK;
        major = p_cod->major & BTM_COD_MAJOR_CLASS_MASK;
        break;

    case GAP_SET_COD_SERVICE_CLASS:
        /* clear out the bits that is not SERVICE_CLASS bits */
        p_cod->service &= BTM_COD_SERVICE_CLASS_MASK;
        service = service | p_cod->service;
        break;

    case GAP_CLR_COD_SERVICE_CLASS:
        p_cod->service &= BTM_COD_SERVICE_CLASS_MASK;
        service = service & (~p_cod->service);
        break;

    case GAP_SET_COD_ALL:
        minor = p_cod->minor & BTM_COD_MINOR_CLASS_MASK;
        major = p_cod->major & BTM_COD_MAJOR_CLASS_MASK;
        p_cod->service &= BTM_COD_SERVICE_CLASS_MASK;
        service = service | p_cod->service;
        break;

    case GAP_INIT_COD:
        minor = p_cod->minor & BTM_COD_MINOR_CLASS_MASK;
        major = p_cod->major & BTM_COD_MAJOR_CLASS_MASK;
        service = p_cod->service & BTM_COD_SERVICE_CLASS_MASK;
        break;

    default:
        return GAP_ERR_ILL_PARM;
    }

    /* convert the fields into the device class type */
    FIELDS_TO_COD(dev_class, minor, major, service);

    btm_status = BTM_SetDeviceClass(dev_class);
    return (gap_convert_btm_status (btm_status));
}

/*******************************************************************************
**
** Function         GAP_ReadDeviceClass
**
** Description      This function reads the local Device Class.
**
** Parameters:
**
** Returns          PASS
**
*******************************************************************************/
UINT16   GAP_ReadDeviceClass(tGAP_COD *p_cod)
{
    UINT8 *dev;

    dev = BTM_ReadDeviceClass();

    BTM_COD_SERVICE_CLASS( p_cod->service, dev );
    BTM_COD_MINOR_CLASS( p_cod->minor, dev );
    BTM_COD_MAJOR_CLASS( p_cod->major, dev );

    return (BT_PASS);
}

/*******************************************************************************
**
** Function         GAP_SetTraceLevel
**
** Description      This function sets the trace level for GAP.  If called with
**                  a value of 0xFF, it simply returns the current trace level.
**
** Returns          The new or current trace level
**
*******************************************************************************/
UINT8 GAP_SetTraceLevel (UINT8 new_level)
{
    if (new_level != 0xFF)
        gap_cb.trace_level = new_level;

    return (gap_cb.trace_level);
}

/*******************************************************************************
**
** Function         GAP_Init
**
** Description      Initializes the control blocks used by GAP.
**
**                  This routine should not be called except once per
**                      stack invocation.
**
** Returns          Nothing
**
*******************************************************************************/
void GAP_Init(void)
{
    memset (&gap_cb, 0, sizeof (tGAP_CB));

    /*** Initialize the callbacks for BTM; Needs to be one per GAP_MAX_BLOCKS ***/
    gap_cb.btm_cback[0] = gap_btm_cback0;
#if GAP_MAX_BLOCKS > 1
    gap_cb.btm_cback[1] = gap_btm_cback1;
#endif
#if GAP_MAX_BLOCKS > 2
    gap_cb.btm_cback[2] = gap_btm_cback2;
#endif

#if defined(GAP_INITIAL_TRACE_LEVEL)
    gap_cb.trace_level = GAP_INITIAL_TRACE_LEVEL;
#else
    gap_cb.trace_level = BT_TRACE_LEVEL_NONE;    /* No traces */
#endif

    /* Initialize the connection control block if included in build */
#if GAP_CONN_INCLUDED == TRUE
    gap_conn_init();
#endif  /* GAP_CONN_INCLUDED */

#if BLE_INCLUDED == TRUE
    gap_attr_db_init();
#endif
}
