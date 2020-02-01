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
#   File: winmutex.pro
#
# Author: $author$
#   Date: 1/30/2020
#
# Os specific QtCreator project for nadir executable winmutex
########################################################################
include(../../../../../build/QtCreator/nadir.pri)
include(../../../../QtCreator/nadir.pri)
include(../../nadir.pri)
include(../../../../QtCreator/app/winmutex/winmutex.pri)

TARGET = $${winmutex_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${winmutex_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${winmutex_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${winmutex_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${winmutex_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${winmutex_HEADERS} \
$${OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${winmutex_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${winmutex_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${winmutex_LIBS} \
$${FRAMEWORKS} \

