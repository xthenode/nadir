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
#   File: uart.pro
#
# Author: $author$
#   Date: 3/19/2021
#
# QtCreator .pro file for nadir executable uart
########################################################################
include(../../../../../../build/QtCreator/nadir.pri)
include(../../../../../build/QtCreator/nadir.pri)
include(../../../../QtCreator/nadir.pri)
include(../../nadir.pri)
include(../../../../QtCreator/app/uart/uart.pri)

TARGET = $${uart_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${uart_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${uart_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${uart_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${uart_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${uart_HEADERS} \
$${uart_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${uart_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${uart_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${uart_LIBS} \
$${FRAMEWORKS} \


