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
$${NADIR_SRC}/xos/platform/microsoft/windows/posix/semaphore.h \
$${NADIR_SRC}/xos/platform/microsoft/windows/posix/semaphore.hpp \
$${NADIR_SRC}/xos/platform/os/platform/semaphore.hpp \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Semaphore.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/Semaphore.hpp \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/io.h \
$${NADIR_SRC}/xos/platform/os/microsoft/windows/io.hpp \
$${NADIR_SRC}/xos/platform/os/oracle/solaris/time.h \
$${NADIR_SRC}/xos/platform/os/oracle/solaris/time.hpp \
$${NADIR_SRC}/xos/platform/os/oracle/solaris/sync.h \
$${NADIR_SRC}/xos/platform/os/oracle/solaris/sync.hpp \
$${NADIR_SRC}/xos/platform/os/oracle/solaris/semaphore.h \
$${NADIR_SRC}/xos/platform/os/oracle/solaris/semaphore.hpp \
$${NADIR_SRC}/xos/platform/os/mach/semaphore.h \
$${NADIR_SRC}/xos/platform/os/mach/semaphore.hpp \
$${NADIR_SRC}/xos/platform/os/apple/mach/semaphore.h \
$${NADIR_SRC}/xos/platform/os/apple/mach/semaphore.hpp \
$${NADIR_SRC}/xos/platform/os/posix/semaphore.h \
$${NADIR_SRC}/xos/platform/os/posix/semaphore.hpp \
$${NADIR_SRC}/xos/platform/os/oses.hpp \
\
$${NADIR_SRC}/xos/mt/semaphore.hpp \
$${NADIR_SRC}/xos/mt/microsoft/windows/semaphore.hpp \
$${NADIR_SRC}/xos/mt/oracle/solaris/semaphore.hpp \
$${NADIR_SRC}/xos/mt/apple/mach/semaphore.hpp \
$${NADIR_SRC}/xos/mt/apple/osx/semaphore.hpp \
$${NADIR_SRC}/xos/mt/mach/semaphore.hpp \
$${NADIR_SRC}/xos/mt/linux/semaphore.hpp \
$${NADIR_SRC}/xos/mt/posix/semaphore.hpp \
$${NADIR_SRC}/xos/mt/os/semaphore.hpp \
$${NADIR_SRC}/xos/mt/semaphores.hpp \
$${NADIR_SRC}/xos/mt/os/semaphores.hpp \
\
$${NADIR_SRC}/xos/console/io.hpp \
$${NADIR_SRC}/xos/console/main_main.hpp \
\
$${NADIR_SRC}/xos/app/console/mt/semaphore/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/mt/semaphore/main.hpp \
\
$${NADIR_SRC}/xos/app/console/semaphore/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/semaphore/main.hpp \

# semaphore SOURCES
#
semaphore_SOURCES += \
$${NADIR_SRC}/xos/base/locked.cpp \
$${NADIR_SRC}/xos/base/acquired.cpp \
\
$${NADIR_SRC}/xos/platform/os/posix/sys/time.cpp \
$${NADIR_SRC}/xos/platform/os/oses.cpp \
\
$${NADIR_SRC}/xos/mt/os/semaphore.cpp \
$${NADIR_SRC}/xos/mt/os/semaphores.cpp \
\
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


