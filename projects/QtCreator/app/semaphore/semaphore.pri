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
#   File: semaphore.pri
#
# Author: $author$
#   Date: 1/4/2020
#
# generic QtCreator project for nadir executable semaphore
########################################################################

########################################################################
# semaphore

# semaphore TARGET
#
semaphore_TARGET = semaphore

# semaphore INCLUDEPATH
#
semaphore_INCLUDEPATH += \
$${nadir_INCLUDEPATH} \

# semaphore DEFINES
#
semaphore_DEFINES += \
$${nadir_DEFINES} \

########################################################################
# semaphore OBJECTIVE_HEADERS
#
#semaphore_OBJECTIVE_HEADERS += \
#$${NADIR_SRC}/nadir/base/base.hh \

# semaphore OBJECTIVE_SOURCES
#
#semaphore_OBJECTIVE_SOURCES += \
#$${NADIR_SRC}/nadir/base/base.mm \

########################################################################
# semaphore HEADERS
#
semaphore_HEADERS += \
$${NADIR_SRC}/xos/base/locked.hpp \
$${NADIR_SRC}/xos/base/acquired.hpp \
\
$${NADIR_SRC}/xos/platform/semaphore.h \
$${NADIR_SRC}/xos/platform/semaphore.hpp \
$${NADIR_SRC}/xos/platform/os/platform/semaphore.hpp \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Semaphore.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Semaphore.hpp \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/io.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/io.hpp \
$${NADIR_SRC}/xos/platform/os/oses.hpp \
$${NADIR_SRC}/xos/mt/apple/mach/semaphore.hpp \
$${NADIR_SRC}/xos/mt/apple/osx/semaphore.hpp \
$${NADIR_SRC}/xos/mt/microsoft/windows/semaphore.hpp \
$${NADIR_SRC}/xos/mt/os/semaphore.hpp \
$${NADIR_SRC}/xos/mt/semaphore.hpp \
$${NADIR_SRC}/xos/mt/semaphores.hpp \
\
$${NADIR_SRC}/xos/console/io.hpp \
$${NADIR_SRC}/xos/console/main_main.hpp \
\
$${NADIR_SRC}/xos/app/console/semaphore/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/semaphore/main.hpp \

# semaphore SOURCES
#
semaphore_SOURCES += \
$${NADIR_SRC}/xos/base/locked.cpp \
$${NADIR_SRC}/xos/base/acquired.cpp \
\
$${NADIR_SRC}/xos/platform/os/oses.cpp \
\
$${NADIR_SRC}/xos/mt/microsoft/windows/Semaphore.cpp \
$${NADIR_SRC}/xos/mt/semaphores.cpp \
\
$${NADIR_SRC}/xos/console/io.cpp \
$${NADIR_SRC}/xos/console/main_main.cpp \
\
$${NADIR_SRC}/xos/app/console/semaphore/main_opt.cpp \
$${NADIR_SRC}/xos/app/console/semaphore/main.cpp \

########################################################################
# semaphore FRAMEWORKS
#
semaphore_FRAMEWORKS += \
$${nadir_FRAMEWORKS} \

# semaphore LIBS
#
semaphore_LIBS += \
$${nadir_LIBS} \


