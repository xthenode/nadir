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
%#   File: xos-app-console-what-main-cxx.t
%#
%# Author: $author$
%#   Date: 6/27/2020
%########################################################################
%with(%
%is_what,%(%else-then(%is_what%,%(%is_What%)%)%)%,%
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%(what)%)%)%)%)%,%
%What,%(%else-then(%if-no(%is_what%,,%(%What%)%)%,%(%if-no(%is_what%,,%(%what%)%)%)%)%)%,%
%WHAT,%(%else-then(%WHAT%,%(%toupper(%What%)%)%)%)%,%
%what,%(%else-then(%_what%,%(%tolower(%What%)%)%)%)%,%
%is_namespace,%(%else-then(%is_namespace%,%(%is_Namespace%)%)%)%,%
%namespace,%(%else-then(%if-no(%is_namespace%,,%(%namespace%)%)%,%(%if-no(%is_namespace%,,%(%What%)%)%)%)%)%,%
%Namespace,%(%else-then(%if-no(%is_namespace%,,%(%Namespace%)%)%,%(%if-no(%is_namespace%,,%(%namespace%)%)%)%)%)%,%
%NAMESPACE,%(%else-then(%NAMESPACE%,%(%toupper(%Namespace%)%)%)%)%,%
%namespace,%(%else-then(%_namespace%,%(%tolower(%Namespace%)%)%)%)%,%
%%(///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-%year()% $organization$
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
///   File: main.cpp
///
/// Author: $author$
///   Date: %date()%
///////////////////////////////////////////////////////////////////////
#include "xos/app/console/%parse(%namespace%,/,,,,%(%namespace%/)%,namespace)%main.hpp"

#if !defined(XOS_APP_CONSOLE_%parse(%NAMESPACE%,/,,,,%(%namespace%_)%,namespace)%MAIN_INSTANCE)
///#define XOS_APP_CONSOLE_%parse(%NAMESPACE%,/,,,,%(%namespace%_)%,namespace)%MAIN_INSTANCE
#endif /// !defined(XOS_APP_CONSOLE_%parse(%NAMESPACE%,/,,,,%(%namespace%_)%,namespace)%MAIN_NSTANCE)

namespace xos {
namespace app {
namespace console {%parse(%namespace%,/,,,,%(
namespace %namespace% {)%,namespace)%

/// class main
#if defined(XOS_APP_CONSOLE_%parse(%NAMESPACE%,/,,,,%(%namespace%_)%,namespace)%MAIN_INSTANCE)
static main the_main;
#endif /// defined(XOS_APP_CONSOLE_%parse(%NAMESPACE%,/,,,,%(%namespace%_)%,namespace)%MAIN_INSTANCE)

%reverse-parse(%namespace%,/,,,,%(} /// namespace %namespace%
)%,namespace)%} /// namespace console
} /// namespace app
} /// namespace xos
)%)%