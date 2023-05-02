#ifndef _MSL_ASSERT_API_H
#define _MSL_ASSERT_API_H

#ifdef __cplusplus
extern "C" {
#endif

void __msl_assertion_failed(const char*, const char*, const char*, int);

#ifdef __cplusplus
}
#endif

#endif
