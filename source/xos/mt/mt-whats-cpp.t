%########################################################################
%# Copyright (c) 1988-2020 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: mt-whats-cpp.t
%#
%# Author: $author$
%#   Date: 1/14/2020
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_what,%(%else-then(%is_what%,%(%is_What%)%)%)%,%
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%(what)%)%)%)%)%,%
%What,%(%else-then(%if-no(%is_what%,,%(%What%)%)%,%(%what%)%)%)%,%
%WHAT,%(%else-then(%WHAT%,%(%toupper(%What%)%)%)%)%,%
%what,%(%else-then(%_What%,%(%tolower(%What%)%)%)%)%,%
%is_es,%(%else-then(%is_es%,%(%is_Es%)%)%)%,%
%es,%(%else-then(%if-no(%is_es%,,%(%es%)%)%,%(%if-no(%is_es%,,%(es)%)%)%)%)%,%
%Es,%(%else-then(%if-no(%is_es%,,%(%Es%)%)%,%(%es%)%)%)%,%
%ES,%(%else-then(%ES%,%(%toupper(%Es%)%)%)%)%,%
%es,%(%else-then(%_Es%,%(%tolower(%Es%)%)%)%)%,%
%%(///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2019 $organization$
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
///   File: %What%%Es%.cpp
///
/// Author: $author$
///   Date: %date()%
///////////////////////////////////////////////////////////////////////
#include "xos/mt/%What%%Es%.hpp"
#include "xos/platform/os/platform/%What%.cpp"

#if !defined(WINDOWS)
#include "xos/platform/os/microsoft/windows/%What%.cpp"
#endif /// !defined(WINDOWS)

#if !defined(SOLARIS)
#include "xos/platform/os/oracle/solaris/%What%.cpp"
#endif /// !defined(SOLARIS)

#if !defined(MACH) || defined(APPLE)
#include "xos/platform/os/mach/%What%.cpp"
#endif /// !defined(MACH) || defined(APPLE)

namespace xos {
namespace mt {

} /// namespace mt
} /// namespace xos
)%)%