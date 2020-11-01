########################################################################
# Copyright (c) 1988-2020 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: winmutex.pri
#
# Author: $author$
#   Date: 1/30/2020
#
# generic QtCreator project for nadir executable winmutex
########################################################################

########################################################################
# winmutex

# winmutex TARGET
#
winmutex_TARGET = winmutex

# winmutex INCLUDEPATH
#
winmutex_INCLUDEPATH += \
$${nadir_INCLUDEPATH} \

# winmutex DEFINES
#
winmutex_DEFINES += \
$${nadir_DEFINES} \
LOGGING_LEVELS_DEFAULT=LOGGING_LEVELS_ERROR \
XOS_APP_CONSOLE_MICROSOFT_WINDOWS_MUTEX_MAIN_INSTANCE \

########################################################################
# winmutex OBJECTIVE_HEADERS
#
#winmutex_OBJECTIVE_HEADERS += \
#$${NADIR_SRC}/nadir/base/base.hh \

# winmutex OBJECTIVE_SOURCES
#
#winmutex_OBJECTIVE_SOURCES += \
#$${NADIR_SRC}/nadir/base/base.mm \

########################################################################
# winmutex HEADERS
#
winmutex_HEADERS += \
$${NADIR_SRC}/xos/logger/level.hpp \
$${NADIR_SRC}/xos/logger/function.hpp \
$${NADIR_SRC}/xos/logger/location.hpp \
$${NADIR_SRC}/xos/logger/message.hpp \
$${NADIR_SRC}/xos/logger/implement.hpp \
$${NADIR_SRC}/xos/logger/defines.hpp \
$${NADIR_SRC}/xos/base/logger.hpp \
\
$${NADIR_SRC}/xos/platform/microsoft/windows/posix/mutex.h \
$${NADIR_SRC}/xos/platform/microsoft/windows/posix/mutex.hpp \
\
$${NADIR_SRC}/xos/platform/os/microsoft/windows.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows.hpp \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Handle.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Handle.hpp \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Mutex.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Mutex.hpp \
\
$${NADIR_SRC}/xos/os/microsoft/windows.hpp \
\
$${NADIR_SRC}/xos/mt/mutex.hpp \
$${NADIR_SRC}/xos/mt/microsoft/windows/mutex.hpp \
$${NADIR_SRC}/xos/mt/microsoft/windows/mutexes.hpp \
\
$${NADIR_SRC}/xos/app/console/microsoft/windows/mutex/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/microsoft/windows/mutex/main.hpp \

# winmutex SOURCES
#
winmutex_SOURCES += \
$${NADIR_SRC}/xos/os/microsoft/windows.cpp \
\
$${NADIR_SRC}/xos/mt/microsoft/windows/mutexes.cpp \
\
$${NADIR_SRC}/xos/console/main_main.cpp \
\
$${NADIR_SRC}/xos/app/console/microsoft/windows/mutex/main_opt.cpp \
$${NADIR_SRC}/xos/app/console/microsoft/windows/mutex/main.cpp \

########################################################################
# winmutex FRAMEWORKS
#
winmutex_FRAMEWORKS += \
$${nadir_FRAMEWORKS} \

# winmutex LIBS
#
winmutex_LIBS += \
$${nadir_LIBS} \
