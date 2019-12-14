///////////////////////////////////////////////////////////////////////
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
///   File: types.hpp
///
/// Author: $author$
///   Date: 11/16/2019
///////////////////////////////////////////////////////////////////////
#ifndef XOS_PLATFORM_TYPES_HPP
#define XOS_PLATFORM_TYPES_HPP

#include "xos/platform/defines.hpp"

///////////////////////////////////////////////////////////////////////
// types
/// ...
#if defined(WINDOWS)
/// Windows
/// ...
typedef TCHAR tchar_t;
typedef WCHAR wchar_t;
typedef BYTE byte_t;
typedef WORD word_t;
/// ...
/// Windows
#else /// defined(WINDOWS)
/// Unix
/// ...
#if defined(APPLEOS)
/// Apple
/// ...
#if !defined(pointer_t)
#define pointer_t platform_pointer_t
#endif /// !defined(pointer_t)
#if defined(APPLEOSX)
/// Apple OSX
/// ...
/// ...
/// Apple OSX
#elif defined(APPLEIOS)
/// Apple IOS
/// ...
/// ...
/// Apple IOS
#endif /// defined(APPLEIOS)
/// ...
/// Apple
#elif defined(LINUX)
/// Linux
/// ...
/// ...
/// Linux
#else /// defined(LINUX)
/// Posix
/// ...
/// ...
/// Posix
#endif /// defined(LINUX)
typedef uint8_t byte_t;
typedef uint16_t word_t;
typedef char tchar_t;
typedef char CHAR;
typedef wchar_t WCHAR;
typedef tchar_t TCHAR;
typedef byte_t BYTE;
typedef word_t WORD;
/// ...
/// Unix
#endif /// defined(WINDOWS)

typedef FILE* file_t;
typedef void* pointer_t;
#define null ((pointer_t)0)

typedef useconds_t nseconds_t;
typedef useconds_t mseconds_t;
typedef mseconds_t seconds_t;
/// ...
/// types
///////////////////////////////////////////////////////////////////////

namespace xos {
namespace platform {

} /// namespace platform
} /// namespace xos

#endif /// ndef XOS_PLATFORM_TYPES_HPP
