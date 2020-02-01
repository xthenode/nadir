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
#   File: winsemaphore.pri
#
# Author: $author$
#   Date: 1/31/2020
#
# generic QtCreator project for nadir executable winsemaphore
########################################################################

########################################################################
# winsemaphore

# winsemaphore TARGET
#
winsemaphore_TARGET = winsemaphore

# winsemaphore INCLUDEPATH
#
winsemaphore_INCLUDEPATH += \
$${nadir_INCLUDEPATH} \

# winsemaphore DEFINES
#
winsemaphore_DEFINES += \
$${nadir_DEFINES} \

########################################################################
# winsemaphore OBJECTIVE_HEADERS
#
#winsemaphore_OBJECTIVE_HEADERS += \
#$${NADIR_SRC}/nadir/base/base.hh \

# winsemaphore OBJECTIVE_SOURCES
#
#winsemaphore_OBJECTIVE_SOURCES += \
#$${NADIR_SRC}/nadir/base/base.mm \

########################################################################
# winsemaphore HEADERS
#
winsemaphore_HEADERS += \
$${NADIR_SRC}/xos/platform/microsoft/windows/posix/semaphore.h \
$${NADIR_SRC}/xos/platform/microsoft/windows/posix/semaphore.hpp \
\
$${NADIR_SRC}/xos/platform/os/microsoft/windows.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows.hpp \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Handle.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Handle.hpp \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Semaphore.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Semaphore.hpp \
\
$${NADIR_SRC}/xos/os/microsoft/windows.hpp \
\
$${NADIR_SRC}/xos/mt/semaphore.hpp \
$${NADIR_SRC}/xos/mt/microsoft/windows/semaphore.hpp \
$${NADIR_SRC}/xos/mt/microsoft/windows/semaphores.hpp \
\
$${NADIR_SRC}/xos/console/main_main.hpp \
\
$${NADIR_SRC}/xos/app/console/microsoft/windows/semaphore/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/microsoft/windows/semaphore/main.hpp \

# winsemaphore SOURCES
#
winsemaphore_SOURCES += \
$${NADIR_SRC}/xos/os/microsoft/windows.cpp \
\
$${NADIR_SRC}/xos/mt/microsoft/windows/semaphores.cpp \
\
$${NADIR_SRC}/xos/console/main_main.cpp \
\
$${NADIR_SRC}/xos/app/console/microsoft/windows/semaphore/main_opt.cpp \
$${NADIR_SRC}/xos/app/console/microsoft/windows/semaphore/main.cpp \

########################################################################
# winsemaphore FRAMEWORKS
#
winsemaphore_FRAMEWORKS += \
$${nadir_FRAMEWORKS} \

# winsemaphore LIBS
#
winsemaphore_LIBS += \
$${nadir_LIBS} \


