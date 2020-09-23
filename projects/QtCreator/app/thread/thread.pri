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
#   File: thread.pri
#
# Author: $author$
#   Date: 1/20/2020
#
# generic QtCreator project for nadir executable thread
########################################################################

########################################################################
# thread

# thread TARGET
#
thread_TARGET = thread

# thread INCLUDEPATH
#
thread_INCLUDEPATH += \
$${nadir_INCLUDEPATH} \

# thread DEFINES
#
thread_DEFINES += \
$${nadir_DEFINES} \
LOGGING_LEVELS_DEFAULT=LOGGING_LEVELS_ERROR \
XOS_APP_CONSOLE_THREAD_MAIN_INSTANCE \

########################################################################
# thread OBJECTIVE_HEADERS
#
#thread_OBJECTIVE_HEADERS += \
#$${NADIR_SRC}/nadir/base/base.hh \

# thread OBJECTIVE_SOURCES
#
#thread_OBJECTIVE_SOURCES += \
#$${NADIR_SRC}/nadir/base/base.mm \

########################################################################
# thread HEADERS
#
thread_HEADERS += \
$${NADIR_SRC}/xos/base/ran.hpp \
$${NADIR_SRC}/xos/base/suspended.hpp \
$${NADIR_SRC}/xos/base/resumed.hpp \
$${NADIR_SRC}/xos/base/forked.hpp \
$${NADIR_SRC}/xos/base/joined.hpp \
\
$${NADIR_SRC}/xos/platform/thread.h \
$${NADIR_SRC}/xos/platform/thread.hpp \
$${NADIR_SRC}/xos/platform/os/platform/thread.hpp \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Thread.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Thread.hpp \
\
$${NADIR_SRC}/xos/mt/thread.hpp \
$${NADIR_SRC}/xos/mt/posix/thread.hpp \
$${NADIR_SRC}/xos/mt/os/thread.hpp \
$${NADIR_SRC}/xos/mt/threads.hpp \
\
$${NADIR_SRC}/xos/console/io.hpp \
$${NADIR_SRC}/xos/console/main_main.hpp \
\
$${NADIR_SRC}/xos/app/console/mt/thread/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/mt/thread/main.hpp \
\
$${NADIR_SRC}/xos/app/console/thread/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/thread/main.hpp \

# thread SOURCES
#
thread_SOURCES += \
$${NADIR_SRC}/xos/base/ran.cpp \
$${NADIR_SRC}/xos/base/suspended.cpp \
$${NADIR_SRC}/xos/base/resumed.cpp \
$${NADIR_SRC}/xos/base/forked.cpp \
$${NADIR_SRC}/xos/base/joined.cpp \
\
$${NADIR_SRC}/xos/os/sleep.cpp \
$${NADIR_SRC}/xos/os/oses.cpp \
$${NADIR_SRC}/xos/mt/os/os.cpp \
$${NADIR_SRC}/xos/mt/os/mutex.cpp \
$${NADIR_SRC}/xos/mt/mutexes.cpp \
$${NADIR_SRC}/xos/mt/threads.cpp \
\
$${NADIR_SRC}/xos/console/main_main.cpp \
\
$${NADIR_SRC}/xos/app/console/thread/main_opt.cpp \
$${NADIR_SRC}/xos/app/console/thread/main.cpp \

########################################################################
# thread FRAMEWORKS
#
thread_FRAMEWORKS += \
$${nadir_FRAMEWORKS} \

# thread LIBS
#
thread_LIBS += \
$${nadir_LIBS} \


