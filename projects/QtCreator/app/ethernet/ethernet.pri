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
#   File: ethernet.pri
#
# Author: $author$
#   Date: 3/7/2020
#
# QtCreator .pri file for nadir executable ethernet
########################################################################

########################################################################
# ethernet

# ethernet TARGET
#
ethernet_TARGET = ethernet

# ethernet INCLUDEPATH
#
ethernet_INCLUDEPATH += \
$${nadir_INCLUDEPATH} \

# ethernet DEFINES
#
ethernet_DEFINES += \
$${nadir_DEFINES} \

########################################################################
# ethernet OBJECTIVE_HEADERS
#
#ethernet_OBJECTIVE_HEADERS += \
#$${NADIR_SRC}/nadir/base/Base.hh \

# ethernet OBJECTIVE_SOURCES
#
#ethernet_OBJECTIVE_SOURCES += \
#$${NADIR_SRC}/nadir/base/Base.mm \

########################################################################
# ethernet HEADERS
#
ethernet_HEADERS += \
$${NADIR_SRC}/xos/base/chars.hpp \
$${NADIR_SRC}/xos/base/string.hpp \
$${NADIR_SRC}/xos/base/wrapped.hpp \
$${NADIR_SRC}/xos/network/ethernet/actual/address.hpp \
$${NADIR_SRC}/xos/network/ethernet/address.hpp \
$${NADIR_SRC}/xos/network/ethernet/bsd/address.hpp \
$${NADIR_SRC}/xos/network/ethernet/systemv/address.hpp \
$${NADIR_SRC}/xos/network/ethernet/os/os.hpp \
$${NADIR_SRC}/xos/network/ethernet/os/address.hpp \
$${NADIR_SRC}/xos/console/main_main.hpp \
$${NADIR_SRC}/xos/app/console/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/main.hpp \
$${NADIR_SRC}/xos/app/console/ethernet/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/ethernet/main.hpp \
$${NADIR_SRC}/xos/app/console/bsd/ethernet/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/bsd/ethernet/main.hpp \
$${NADIR_SRC}/xos/app/console/systemv/ethernet/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/systemv/ethernet/main.hpp \

# ethernet SOURCES
#
ethernet_SOURCES += \
$${NADIR_SRC}/xos/base/chars.cpp \
$${NADIR_SRC}/xos/base/string.cpp \
$${NADIR_SRC}/xos/base/wrapped.cpp \
$${NADIR_SRC}/xos/network/ethernet/os/os.cpp \
$${NADIR_SRC}/xos/network/ethernet/os/address.cpp \
$${NADIR_SRC}/xos/console/main_main.cpp \
$${NADIR_SRC}/xos/app/console/ethernet/main_opt.cpp \
$${NADIR_SRC}/xos/app/console/ethernet/main.cpp \

########################################################################
# ethernet FRAMEWORKS
#
ethernet_FRAMEWORKS += \
$${nadir_FRAMEWORKS} \

# ethernet LIBS
#
ethernet_LIBS += \
$${nadir_LIBS} \


