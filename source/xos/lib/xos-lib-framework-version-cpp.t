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
%#   File: xos-lib-framework-version-cpp.t
%#
%# Author: $author$
%#   Date: 5/18/2020
%########################################################################
%with(%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(Framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
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
///   File: version.cpp
///
/// Author: $author$
///   Date: %date()%
///////////////////////////////////////////////////////////////////////
#include "xos/lib/%framework%/version.hpp"

#if !defined(XOS_LIB_%FRAMEWORK%_VERSION_NAME)
#define XOS_LIB_%FRAMEWORK%_VERSION_NAME   "lib%framework%"
#endif /// !defined(XOS_LIB_%FRAMEWORK%_VERSION_NAME)

#if !defined(XOS_LIB_%FRAMEWORK%_VERSION_MAJOR)
#define XOS_LIB_%FRAMEWORK%_VERSION_MAJOR   0
#endif /// !defined(XOS_LIB_%FRAMEWORK%_VERSION_MAJOR)

#if !defined(XOS_LIB_%FRAMEWORK%_VERSION_MINOR)
#define XOS_LIB_%FRAMEWORK%_VERSION_MINOR   0
#endif /// !defined(XOS_LIB_%FRAMEWORK%_VERSION_MINOR)

#if !defined(XOS_LIB_%FRAMEWORK%_VERSION_RELEASE)
#define XOS_LIB_%FRAMEWORK%_VERSION_RELEASE 0
#endif /// !defined(XOS_LIB_%FRAMEWORK%_VERSION_RELEASE)

#if !defined(XOS_LIB_%FRAMEWORK%_VERSION_BUILD)
#define XOS_LIB_%FRAMEWORK%_VERSION_BUILD   "%date()%"
#endif /// !defined(XOS_LIB_%FRAMEWORK%_VERSION_BUILD)

namespace xos {
namespace lib {
namespace %framework% {

namespace which {
/// class versiont
template <class TExtends = lib::extended::version, class TImplements = typename TExtends::implements>
class exported versiont: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef versiont derives;

    /// constructor / destructor
    versiont(const versiont& copy): extends(copy) {
    }
    versiont(): extends
    (XOS_LIB_%FRAMEWORK%_VERSION_NAME, 
     XOS_LIB_%FRAMEWORK%_VERSION_MAJOR, XOS_LIB_%FRAMEWORK%_VERSION_MINOR, 
     XOS_LIB_%FRAMEWORK%_VERSION_RELEASE, XOS_LIB_%FRAMEWORK%_VERSION_BUILD) {
    }
    virtual ~versiont() {
    }
}; /// class versiont
typedef versiont<> version;
} /// namespace which

/// class version
const lib::version& version::which() {
    static const %framework%::which::version version;
    return version;
}

} /// namespace %framework%
} /// namespace lib
} /// namespace xos
)%)%