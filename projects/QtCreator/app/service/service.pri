########################################################################
# Copyright (c) 1988-2021 $organization$
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
#   File: service.pri
#
# Author: $author$
#   Date: 3/22/2021
#
# QtCreator .pri file for nadir executable service
########################################################################

########################################################################
# service

# service TARGET
#
service_TARGET = service

# service INCLUDEPATH
#
service_INCLUDEPATH += \
$${nadir_INCLUDEPATH} \

# service DEFINES
#
service_DEFINES += \
$${nadir_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_APP_CONSOLE_SERVICE_BASE_MAIN_INSTANCE \

########################################################################
# service OBJECTIVE_HEADERS
#
#service_OBJECTIVE_HEADERS += \
#$${NADIR_SRC}/xos/app/console/service/base/main_opt.hh \

# service OBJECTIVE_SOURCES
#
#service_OBJECTIVE_SOURCES += \
#$${NADIR_SRC}/xos/app/console/service/base/main_opt.mm \

########################################################################
# service HEADERS
#
service_HEADERS += \
$${NADIR_SRC}/xos/comm/transport.hpp \
$${NADIR_SRC}/xos/comm/address.hpp \
$${NADIR_SRC}/xos/comm/endpoint.hpp \
$${NADIR_SRC}/xos/comm/connection.hpp \
$${NADIR_SRC}/xos/comm/interface.hpp \
\
$${NADIR_SRC}/xos/app/console/version/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/version/main.hpp \
\
$${NADIR_SRC}/xos/app/console/service/base/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/service/base/main.hpp \
\
$${NADIR_SRC}/xos/console/main_main.hpp \

# service SOURCES
#
service_SOURCES += \
$${NADIR_SRC}/xos/comm/transport.cpp \
$${NADIR_SRC}/xos/comm/address.cpp \
$${NADIR_SRC}/xos/comm/endpoint.cpp \
$${NADIR_SRC}/xos/comm/connection.cpp \
$${NADIR_SRC}/xos/comm/interface.cpp \
\
$${NADIR_SRC}/xos/app/console/service/base/main_opt.cpp \
$${NADIR_SRC}/xos/app/console/service/base/main.cpp \
\
$${NADIR_SRC}/xos/console/main_main.cpp \

########################################################################
# service FRAMEWORKS
#
service_FRAMEWORKS += \
$${nadir_FRAMEWORKS} \

# service LIBS
#
service_LIBS += \
$${nadir_LIBS} \


