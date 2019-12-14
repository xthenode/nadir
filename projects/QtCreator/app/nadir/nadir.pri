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
#   File: nadir.pri
#
# Author: $author$
#   Date: 12/3/2019
#
# generic QtCreator project for nadir executable nadir
########################################################################

########################################################################
# nadir

# nadir_exe TARGET
#
nadir_exe_TARGET = nadir

# nadir_exe INCLUDEPATH
#
nadir_exe_INCLUDEPATH += \
$${nadir_INCLUDEPATH} \

# nadir_exe DEFINES
#
nadir_exe_DEFINES += \
$${nadir_DEFINES} \

########################################################################
# nadir_exe OBJECTIVE_HEADERS
#
#nadir_exe_OBJECTIVE_HEADERS += \
#$${NADIR_SRC}/nadir/base/base.hh \

# nadir_exe OBJECTIVE_SOURCES
#
#nadir_exe_OBJECTIVE_SOURCES += \
#$${NADIR_SRC}/nadir/base/base.mm \

########################################################################
# nadir_exe HEADERS
#
nadir_exe_HEADERS += \
$${NADIR_SRC}/xos/base/exception.hpp \
$${NADIR_SRC}/xos/base/locked.hpp \
$${NADIR_SRC}/xos/base/logged.hpp \
$${NADIR_SRC}/xos/base/logger.hpp \
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
$${NADIR_SRC}/xos/console/main_main.hpp \
$${NADIR_SRC}/xos/app/console/nadir/main.hpp \

# nadir_exe SOURCES
#
nadir_exe_SOURCES += \
$${NADIR_SRC}/xos/base/exception.cpp \
$${NADIR_SRC}/xos/base/locked.cpp \
$${NADIR_SRC}/xos/base/logged.cpp \
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
$${NADIR_SRC}/xos/app/console/nadir/main.cpp \

########################################################################
# nadir_exe FRAMEWORKS
#
nadir_exe_FRAMEWORKS += \
$${nadir_FRAMEWORKS} \

# nadir_exe LIBS
#
nadir_exe_LIBS += \
$${nadir_LIBS} \


