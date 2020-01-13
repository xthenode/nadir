########################################################################
# Copyright (c) 1988-2019 $organization$
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
#   File: mutex.pri
#
# Author: $author$
#   Date: 12/26/2019
#
# generic QtCreator project for nadir executable mutex
########################################################################

########################################################################
# mutex

# mutex TARGET
#
mutex_TARGET = mutex

# mutex INCLUDEPATH
#
mutex_INCLUDEPATH += \
$${nadir_INCLUDEPATH} \

# mutex DEFINES
#
mutex_DEFINES += \
$${nadir_DEFINES} \

########################################################################
# mutex OBJECTIVE_HEADERS
#
#mutex_OBJECTIVE_HEADERS += \
#$${NADIR_SRC}/nadir/base/base.hh \

# mutex OBJECTIVE_SOURCES
#
#mutex_OBJECTIVE_SOURCES += \
#$${NADIR_SRC}/nadir/base/base.mm \

########################################################################
# mutex HEADERS
#
mutex_HEADERS += \
$${NADIR_SRC}/xos/platform/build.h \
$${NADIR_SRC}/xos/platform/build.hpp \
$${NADIR_SRC}/xos/platform/compiler.h \
$${NADIR_SRC}/xos/platform/compiler.hpp \
$${NADIR_SRC}/xos/platform/includes.h \
$${NADIR_SRC}/xos/platform/includes.hpp \
$${NADIR_SRC}/xos/platform/defines.h \
$${NADIR_SRC}/xos/platform/defines.hpp \
$${NADIR_SRC}/xos/platform/types.h \
$${NADIR_SRC}/xos/platform/types.hpp \
$${NADIR_SRC}/xos/platform/configure.h \
$${NADIR_SRC}/xos/platform/configure.hpp \
\
$${NADIR_SRC}/xos/platform/os/microsoft/windows.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows.hpp \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Handle.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Handle.hpp \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Mutex.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Mutex.hpp \
\
$${NADIR_SRC}/xos/platform/os/oracle/solaris/time.h \
$${NADIR_SRC}/xos/platform/os/oracle/solaris/time.hpp \
$${NADIR_SRC}/xos/platform/os/oracle/solaris/mutex.h \
$${NADIR_SRC}/xos/platform/os/oracle/solaris/mutex.hpp \
\
$${NADIR_SRC}/xos/platform/os/mach/kern.h \
$${NADIR_SRC}/xos/platform/os/mach/kern.hpp \
$${NADIR_SRC}/xos/platform/os/mach/mach.h \
$${NADIR_SRC}/xos/platform/os/mach/mach.hpp \
$${NADIR_SRC}/xos/platform/os/mach/task.h \
$${NADIR_SRC}/xos/platform/os/mach/task.hpp \
$${NADIR_SRC}/xos/platform/os/mach/lock_set.h \
$${NADIR_SRC}/xos/platform/os/mach/lock_set.hpp \
\
$${NADIR_SRC}/xos/platform/os/platform/mutex.h \
$${NADIR_SRC}/xos/platform/os/platform/mutex.hpp \
\
$${NADIR_SRC}/xos/base/exception.hpp \
$${NADIR_SRC}/xos/base/attached.hpp \
$${NADIR_SRC}/xos/base/created.hpp \
$${NADIR_SRC}/xos/base/locked.hpp \
$${NADIR_SRC}/xos/base/logged.hpp \
$${NADIR_SRC}/xos/base/logger.hpp \
\
$${NADIR_SRC}/xos/mt/mutex.hpp \
$${NADIR_SRC}/xos/mt/microsoft/windows/mutex.hpp \
$${NADIR_SRC}/xos/mt/posix/timed.hpp \
$${NADIR_SRC}/xos/mt/posix/mutex.hpp \
$${NADIR_SRC}/xos/mt/apple/osx/mutex.hpp \
$${NADIR_SRC}/xos/mt/oracle/solaris/mutex.hpp \
$${NADIR_SRC}/xos/mt/mach/mutex.hpp \
$${NADIR_SRC}/xos/mt/os/mutex.hpp \
$${NADIR_SRC}/xos/mt/mutexes.hpp \
$${NADIR_SRC}/xos/mt/os/os.hpp \
\
$${NADIR_SRC}/xos/logger/level.hpp \
$${NADIR_SRC}/xos/logger/levels.hpp \
$${NADIR_SRC}/xos/logger/function.hpp \
$${NADIR_SRC}/xos/logger/location.hpp \
$${NADIR_SRC}/xos/logger/message.hpp \
$${NADIR_SRC}/xos/logger/implement.hpp \
$${NADIR_SRC}/xos/logger/defines.hpp \
\
$${NADIR_SRC}/xos/console/io.hpp \
$${NADIR_SRC}/xos/console/logger.hpp \
$${NADIR_SRC}/xos/console/main.hpp \
$${NADIR_SRC}/xos/console/main_main.hpp \
$${NADIR_SRC}/xos/console/getopt/main_opt.hpp \
$${NADIR_SRC}/xos/console/getopt/main.hpp \
\
$${NADIR_SRC}/xos/app/console/os/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/os/main.hpp \
\
$${NADIR_SRC}/xos/app/console/mt/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/mt/main.hpp \
\
$${NADIR_SRC}/xos/app/console/mutex/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/mutex/main.hpp \

# mutex SOURCES
#
mutex_SOURCES += \
$${NADIR_SRC}/xos/platform/os/oses.cpp \
\
$${NADIR_SRC}/xos/base/exception.cpp \
$${NADIR_SRC}/xos/base/attached.cpp \
$${NADIR_SRC}/xos/base/created.cpp \
$${NADIR_SRC}/xos/base/locked.cpp \
$${NADIR_SRC}/xos/base/logged.cpp \
\
$${NADIR_SRC}/xos/mt/os/os.cpp \
$${NADIR_SRC}/xos/mt/os/mutex.cpp \
$${NADIR_SRC}/xos/mt/mutexes.cpp \
\
$${NADIR_SRC}/xos/logger/level.cpp \
$${NADIR_SRC}/xos/logger/levels.cpp \
$${NADIR_SRC}/xos/logger/function.cpp \
$${NADIR_SRC}/xos/logger/location.cpp \
$${NADIR_SRC}/xos/logger/message.cpp \
$${NADIR_SRC}/xos/logger/implement.cpp \
$${NADIR_SRC}/xos/logger/defines.cpp \
\
$${NADIR_SRC}/xos/console/io.cpp \
$${NADIR_SRC}/xos/console/logger.cpp \
$${NADIR_SRC}/xos/console/main_main.cpp \
\
$${NADIR_SRC}/xos/app/console/mutex/main_opt.cpp \
$${NADIR_SRC}/xos/app/console/mutex/main.cpp \

########################################################################
# mutex FRAMEWORKS
#
mutex_FRAMEWORKS += \
$${nadir_FRAMEWORKS} \

# mutex LIBS
#
mutex_LIBS += \
$${nadir_LIBS} \
