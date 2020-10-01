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
#   File: winthread.pri
#
# Author: $author$
#   Date: 9/30/2020
#
# QtCreator .pri file for nadir executable winthread
########################################################################

########################################################################
# winthread

# winthread TARGET
#
winthread_TARGET = winthread

# winthread INCLUDEPATH
#
winthread_INCLUDEPATH += \
$${nadir_INCLUDEPATH} \

# winthread DEFINES
#
winthread_DEFINES += \
$${nadir_DEFINES} \
LOGGING_LEVELS_DEFAULT=LOGGING_LEVELS_ERROR \
XOS_APP_CONSOLE_MICROSOFT_WINDOWS_THREAD_MAIN_INSTANCE \

########################################################################
# winthread OBJECTIVE_HEADERS
#
#winthread_OBJECTIVE_HEADERS += \
#$${NADIR_SRC}/nadir/base/Base.hh \

# winthread OBJECTIVE_SOURCES
#
#winthread_OBJECTIVE_SOURCES += \
#$${NADIR_SRC}/nadir/base/Base.mm \

########################################################################
# winthread HEADERS
#
winthread_HEADERS += \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/thread.hpp \
\
$${NADIR_SRC}/xos/os/oses.hpp \
$${NADIR_SRC}/xos/mt/mutexes.hpp \
$${NADIR_SRC}/xos/mt/threads.hpp \
$${NADIR_SRC}/xos/mt/microsoft/windows/thread.hpp \
$${NADIR_SRC}/xos/mt/microsoft/windows/crt/thread.hpp \
\
$${NADIR_SRC}/xos/console/main_main.hpp \
\
$${NADIR_SRC}/xos/app/console/microsoft/windows/thread/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/microsoft/windows/thread/main.hpp \

# winthread SOURCES
#
winthread_SOURCES += \
$${NADIR_SRC}/xos/os/oses.cpp \
$${NADIR_SRC}/xos/mt/mutexes.cpp \
$${NADIR_SRC}/xos/mt/threads.cpp \
$${NADIR_SRC}/xos/mt/microsoft/windows/thread.cpp \
\
$${NADIR_SRC}/xos/console/main_main.cpp \
\
$${NADIR_SRC}/xos/app/console/microsoft/windows/thread/main_opt.cpp \
$${NADIR_SRC}/xos/app/console/microsoft/windows/thread/main.cpp \

########################################################################
# winthread FRAMEWORKS
#
winthread_FRAMEWORKS += \
$${nadir_FRAMEWORKS} \

# winthread LIBS
#
winthread_LIBS += \
$${nadir_LIBS} \


