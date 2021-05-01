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
#   File: uart.pri
#
# Author: $author$
#   Date: 3/19/2021
#
# QtCreator .pri file for nadir executable uart
########################################################################

########################################################################
# uart

# uart TARGET
#
uart_TARGET = uart

# uart INCLUDEPATH
#
uart_INCLUDEPATH += \
$${nadir_INCLUDEPATH} \

# uart DEFINES
#
uart_DEFINES += \
$${nadir_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_APP_CONSOLE_COMM_UART_BASE_MAIN_INSTANCE \

########################################################################
# uart OBJECTIVE_HEADERS
#
#uart_OBJECTIVE_HEADERS += \
#$${NADIR_SRC}/xos/app/console/uart/main.hh \

# uart OBJECTIVE_SOURCES
#
#uart_OBJECTIVE_SOURCES += \
#$${NADIR_SRC}/xos/app/console/uart/main.mm \

########################################################################
# uart HEADERS
#
uart_HEADERS += \
$${NADIR_SRC}/xos/base/opened.hpp \
\
$${NADIR_SRC}/xos/platform/posix/comm/serial/usart.h \
$${NADIR_SRC}/xos/platform/posix/comm/serial/usart.hpp \
\
$${NADIR_SRC}/xos/comm/serial/usart/interface.hpp \
$${NADIR_SRC}/xos/comm/serial/usart/posix/interface.hpp \
\
$${NADIR_SRC}/xos/app/console/comm/uart/base/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/comm/uart/base/main.hpp \
\
$${NADIR_SRC}/xos/console/main_main.hpp \

# uart SOURCES
#
uart_SOURCES += \
$${NADIR_SRC}/xos/platform/posix/comm/serial/usart.cpp \
\
$${NADIR_SRC}/xos/comm/serial/usart/posix/interface.cpp \
\
$${NADIR_SRC}/xos/app/console/comm/uart/base/main_opt.cpp \
$${NADIR_SRC}/xos/app/console/comm/uart/base/main.cpp \
\
$${NADIR_SRC}/xos/console/main_main.cpp \

########################################################################
# uart FRAMEWORKS
#
uart_FRAMEWORKS += \
$${nadir_FRAMEWORKS} \

# uart LIBS
#
uart_LIBS += \
$${nadir_LIBS} \


