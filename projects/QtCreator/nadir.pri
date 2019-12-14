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
# generic QtCreator project for nadir
########################################################################

OTHER_PKG = ../../../../../../..
OTHER_PRJ = ../../../../../..
OTHER_BLD = ..

THIRDPARTY_NAME = thirdparty
THIRDPARTY_PKG = $${OTHER_PKG}/$${THIRDPARTY_NAME}
THIRDPARTY_PRJ = $${OTHER_PRJ}/$${THIRDPARTY_NAME}
THIRDPARTY_SRC = $${OTHER_PRJ}/src/$${THIRDPARTY_NAME}

########################################################################
# nadir
NADIR_NAME = nadir
NADIR_SOURCE = source

NADIR_PKG = ../../../../../..
NADIR_PRJ = ../../../../..
NADIR_BLD = ../..

NADIR_BIN = $${NADIR_BLD}/bin
NADIR_LIB = $${NADIR_BLD}/lib
NADIR_SRC = $${NADIR_PRJ}/$${NADIR_SOURCE}

# nadir BUILD_CONFIG
#
CONFIG(debug, debug|release) {
BUILD_CONFIG = Debug
nadir_DEFINES += DEBUG_BUILD
} else {
BUILD_CONFIG = Release
nadir_DEFINES += RELEASE_BUILD
}

# nadir INCLUDEPATH
#
nadir_INCLUDEPATH += \
$${NADIR_SRC} \
$${build_nadir_INCLUDEPATH} \

# nadir DEFINES
#
nadir_DEFINES += \
$${build_nadir_DEFINES} \

# nadir FRAMEWORKS
#
nadir_FRAMEWORKS += \

# nadir LIBS
#
nadir_LIBS += \
$${nadir_FRAMEWORKS} \
-L$${NADIR_LIB}/lib$${NADIR_NAME} \
-l$${NADIR_NAME} \

########################################################################
