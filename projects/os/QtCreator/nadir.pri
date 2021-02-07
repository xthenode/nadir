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
#   Date: 12/3/2019, 12/22/2020
#
# Os specific QtCreator project for nadir
########################################################################
UNAME = $$system(uname)

contains(UNAME,Darwin) {
NADIR_OS = macosx
} else {
contains(UNAME,Linux) {
NADIR_OS = linux
} else {
NADIR_OS = windows
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)

contains(BUILD_OS,NADIR_OS) {
NADIR_BUILD = $${NADIR_OS}
} else {
NADIR_BUILD = $${BUILD_OS}
} # contains(BUILD_OS,NADIR_OS)

contains(BUILD_CPP_VERSION,10) {
CONFIG += c++0x
} else {
contains(BUILD_CPP_VERSION,98|03|11|14|17) {
CONFIG += c++$${BUILD_CPP_VERSION}
} else {
} # contains(BUILD_CPP_VERSION,98|03|11|14|17)
} # contains(BUILD_CPP_VERSION,10)

contains(NADIR_OS,macosx) {
} else {
contains(NADIR_OS,linux) {
QMAKE_CXXFLAGS += -fpermissive
} else {
contains(NADIR_OS,windows) {
} else {
} # contains(NADIR_OS,windows)
} # contains(NADIR_OS,linux)
} # contains(NADIR_OS,macosx)

########################################################################
# nadir

# nadir INCLUDEPATH
#
nadir_INCLUDEPATH += \

# nadir DEFINES
#
nadir_DEFINES += \

# nadir FRAMEWORKS
#
nadir_FRAMEWORKS += \
$${build_nadir_FRAMEWORKS} \

# nadir LIBS
#
nadir_LIBS += \
$${nadir_FRAMEWORKS} \
$${build_nadir_LIBS} \

contains(NADIR_OS,macosx|linux) {
nadir_LIBS += \
-lpthread \
-ldl
} else {
} # contains(NADIR_OS,macosx|linux)

contains(NADIR_OS,linux) {
nadir_LIBS += \
-lrt
} else {
} # contains(NADIR_OS,linux)

