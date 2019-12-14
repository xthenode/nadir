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
///   File: build.hpp
///
/// Author: $author$
///   Date: 11/16/2019
///////////////////////////////////////////////////////////////////////
#ifndef XOS_PLATFORM_BUILD_HPP
#define XOS_PLATFORM_BUILD_HPP

///////////////////////////////////////////////////////////////////////
/// build
/// ...
///
/// Define WIN32 if any of the Win32 variants are defined
///
#if defined(WIN32) || defined(_WIN32) || defined(__WIN32__) || defined(__Win32__) || defined(__win32__)
#if !defined(WIN32)
#define WIN32
#endif /// !defined(WIN32)
#endif /// defined(WIN32) || defined(_WIN32) || defined(__WIN32__) || defined(__Win32__) || defined(__win32__)

///
/// Define WIN64 if any of the Win64 variants are defined
///
#if defined(WIN64) || defined(_WIN64) || defined(__WIN64__) || defined(__Win64__) || defined(__win64__)
#if !defined(WIN64)
#define WIN64
#endif /// !defined(WIN64)
#endif /// defined(WIN64) || defined(_WIN64) || defined(__WIN64__) || defined(__Win64__) || defined(__win64__)

///
/// Define WINDOWS if any of the Windows variants are defined
///
#if defined(WIN32) || defined(WIN64)
#if !defined(WINDOWS)
#define WINDOWS
#endif /// !defined(WINDOWS)
#endif /// defined(WIN32) || defined(WIN64)

///
/// Define APPLE if any of the Apple variants are defined
///
#if defined(APPLE) || defined(_APPLE) || defined(__APPLE__) || defined(__Apple__) || defined(__apple__)
#if !defined(APPLE)
#define APPLE
#endif /// !defined(APPLE)
#endif /// defined(APPLE) || defined(_APPLE) || defined(__APPLE__) || defined(__Apple__) || defined(__apple__)

///
/// Define MACH if any of the Mach variants are defined
///
#if defined(MACH) || defined(_MACH) || defined(__MACH__) || defined(__Mach__) || defined(__mach__)
#if !defined(MACH)
#define MACH
#endif /// !defined(MACH)
#endif /// defined(MACH) || defined(_MACH) || defined(__MACH__) || defined(__Mach__) || defined(__mach__)

///
/// Define APPLEOS if Apple and Mach variants are defined
///
#if defined(APPLE) && defined(MACH)
#include <TargetConditionals.h>
#include <Availability.h>
#include <mach/task.h>
#include <mach/mach.h>
#if !defined(APPLEOS)
#define APPLEOS
#endif /// !defined(APPLEOS)
#endif /// defined(APPLE) && defined(MACH)

///
/// Define APPLEOSX if defined(APPLEOS) && (TARGET_OS_IPHONE == 0)
///
#if defined(APPLEOS) && (TARGET_OS_IPHONE == 0)
#if !defined(APPLEOSX)
#define APPLEOSX
#endif /// !defined(APPLEOSX)
#endif /// defined(APPLEOS) && (TARGET_OS_IPHONE == 0)

///
/// Define APPLEIOS if defined(APPLEOS) && (TARGET_OS_IPHONE != 0)
///
#if defined(APPLEOS) && (TARGET_OS_IPHONE != 0)
#if !defined(APPLEIOS)
#define APPLEIOS
#endif /// !defined(APPLEIOS)
#endif /// defined(APPLEOS) && (TARGET_OS_IPHONE != 0)
/// ...
/// build
///////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////
/// os
/// ...
#if defined(WINDOWS)
/// Windows
/// ...
/// ...
/// Windows
#else /// defined(WINDOWS)
/// Unix
/// ...
#if defined(APPLEOS)
/// Apple
/// ...
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
/// ...
/// Unix
#endif /// defined(WINDOWS)
/// ...
/// os
///////////////////////////////////////////////////////////////////////

namespace xos {
namespace platform {

} /// namespace platform
} /// namespace xos

#endif /// ndef XOS_PLATFORM_BUILD_HPP
