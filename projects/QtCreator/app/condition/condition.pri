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
#   File: condition.pri
#
# Author: $author$
#   Date: 1/15/2020
#
# generic QtCreator project for nadir executable condition
########################################################################

########################################################################
# condition

# condition TARGET
#
condition_TARGET = condition

# condition INCLUDEPATH
#
condition_INCLUDEPATH += \
$${nadir_INCLUDEPATH} \

# condition DEFINES
#
condition_DEFINES += \
$${nadir_DEFINES} \
LOGGING_LEVELS_DEFAULT=LOGGING_LEVELS_ERROR \
XOS_APP_CONSOLE_CONDITION_MAIN_INSTANCE \

########################################################################
# condition OBJECTIVE_HEADERS
#
#condition_OBJECTIVE_HEADERS += \
#$${NADIR_SRC}/nadir/base/base.hh \

# condition OBJECTIVE_SOURCES
#
#condition_OBJECTIVE_SOURCES += \
#$${NADIR_SRC}/nadir/base/base.mm \

########################################################################
# condition HEADERS
#
condition_HEADERS += \
$${NADIR_SRC}/xos/base/locked.hpp \
$${NADIR_SRC}/xos/base/waited.hpp \
$${NADIR_SRC}/xos/base/signaled.hpp \
\
$${NADIR_SRC}/xos/system/times.hpp \
\
$${NADIR_SRC}/xos/platform/condition.h \
$${NADIR_SRC}/xos/platform/condition.hpp \
$${NADIR_SRC}/xos/platform/os/platform/condition.hpp \
$${NADIR_SRC}/xos/mt/mutex.hpp \
$${NADIR_SRC}/xos/mt/os/mutex.hpp \
$${NADIR_SRC}/xos/mt/mutexes.hpp \
$${NADIR_SRC}/xos/mt/condition.hpp \
$${NADIR_SRC}/xos/mt/apple/osx/condition.hpp \
$${NADIR_SRC}/xos/mt/linux/condition.hpp \
$${NADIR_SRC}/xos/mt/posix/condition.hpp \
$${NADIR_SRC}/xos/mt/os/condition.hpp \
$${NADIR_SRC}/xos/mt/conditions.hpp \
\
$${NADIR_SRC}/xos/console/io.hpp \
$${NADIR_SRC}/xos/console/main_main.hpp \
\
$${NADIR_SRC}/xos/app/console/condition/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/condition/main.hpp \

# condition SOURCES
#
condition_SOURCES += \
$${NADIR_SRC}/xos/base/waited.cpp \
$${NADIR_SRC}/xos/base/signaled.cpp \
\
$${NADIR_SRC}/xos/system/times.cpp \
\
$${NADIR_SRC}/xos/mt/os/mutex.cpp \
$${NADIR_SRC}/xos/mt/mutexes.cpp \
$${NADIR_SRC}/xos/mt/os/condition.cpp \
$${NADIR_SRC}/xos/mt/conditions.cpp \
\
$${NADIR_SRC}/xos/console/io.cpp \
$${NADIR_SRC}/xos/console/main_main.cpp \
\
$${NADIR_SRC}/xos/app/console/condition/main_opt.cpp \
$${NADIR_SRC}/xos/app/console/condition/main.cpp \

########################################################################
# condition FRAMEWORKS
#
condition_FRAMEWORKS += \
$${nadir_FRAMEWORKS} \

# condition LIBS
#
condition_LIBS += \
$${nadir_LIBS} \


