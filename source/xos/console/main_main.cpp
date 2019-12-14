///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2019 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: main_main.cpp
///
/// Author: $author$
///   Date: 12/3/2019
///////////////////////////////////////////////////////////////////////
#include "xos/console/main_main.hpp"
#include "xos/console/logger.hpp"

namespace xos {
namespace console {

} /// namespace console
} /// namespace xos

/// function main
int main(int argc, char** argv, char** env) {
    ::xos::console::logger logger;
    int err = 0;

    LOGGER_LOG_DEBUG("try {...");
    try {
        LOGGER_LOG_DEBUG("::xos::console::main::the_main(argc, argv, env)...");
        err = ::xos::console::main::the_main(argc, argv, env);
        LOGGER_LOG_DEBUG("..." << err << " = ::xos::console::main::the_main(argc, argv, env)");
    } catch (const ::xos::exception& e) {
        LOGGER_LOG_ERROR("...catch (const ::xos::exception& e = \"" << e.status_to_chars() << "\")");
        return err = 1;
    } catch (...) {
        LOGGER_LOG_ERROR("...catch (...)");
        return err = 1;
    }
    LOGGER_LOG_DEBUG("...} try");
    return err;
} /// function main
