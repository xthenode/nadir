///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2020 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: Thread.cpp
///
/// Author: $author$
///   Date: 1/23/2020
///////////////////////////////////////////////////////////////////////
#include "xos/platform/os/microsoft/windows/Thread.hpp"
#include "xos/platform/os/microsoft/windows/Handle.hpp"
#include "xos/mt/os/thread.hpp"

namespace xos {
namespace platform {
namespace os {
namespace microsoft {
namespace windows {

} /// namespace windows
} /// namespace microsoft
} /// namespace os
} /// namespace platform
} /// namespace xos

#if !defined(WINDOWS)
/*/
/// windows threads
/// ...
/*/
HANDLE WINAPI CreateThread(
  _In_opt_  LPSECURITY_ATTRIBUTES  lpThreadAttributes,
  _In_      SIZE_T                 dwStackSize,
  _In_      LPTHREAD_START_ROUTINE lpStartAddress,
  _In_opt_  LPVOID                 lpParameter,
  _In_      DWORD                  dwCreationFlags,
  _Out_opt_ LPDWORD                lpThreadId ) {
    HANDLE hThread = 0;
    return hThread;
}
uintptr_t _beginthreadex(
   void *security,
   unsigned stack_size,
   unsigned ( __stdcall *start_address )( void * ),
   void *arglist,
   unsigned initflag,
   unsigned *thrdaddr ) {
    uintptr_t pthread = 0;
    return pthread;
}
/*/
/// ...
/// windows threads
/*/
#endif /*/ !defined(WINDOWS) /*/
