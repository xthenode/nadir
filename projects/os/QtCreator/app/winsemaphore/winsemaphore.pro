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
#   File: winsemaphore.pro
#
# Author: $author$
#   Date: 1/31/2020
#
# Os specific QtCreator project for nadir executable winsemaphore
########################################################################
include(../../../../../build/QtCreator/nadir.pri)
include(../../../../QtCreator/nadir.pri)
include(../../nadir.pri)
include(../../../../QtCreator/app/winsemaphore/winsemaphore.pri)

TARGET = $${winsemaphore_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${winsemaphore_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${winsemaphore_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${winsemaphore_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${winsemaphore_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${winsemaphore_HEADERS} \
$${OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${winsemaphore_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${winsemaphore_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${winsemaphore_LIBS} \
$${FRAMEWORKS} \

