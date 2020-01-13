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
///   File: main.hpp
///
/// Author: $author$
///   Date: 12/26/2019
///////////////////////////////////////////////////////////////////////
#ifndef XOS_APP_CONSOLE_MUTEX_MAIN_HPP
#define XOS_APP_CONSOLE_MUTEX_MAIN_HPP

#include "xos/app/console/mutex/main_opt.hpp"
#include "xos/mt/microsoft/windows/mutex.hpp"
#include "xos/mt/apple/osx/mutex.hpp"
#include "xos/mt/oracle/solaris/mutex.hpp"
#include "xos/mt/mach/mutex.hpp"
#include "xos/mt/posix/mutex.hpp"
#include "xos/mt/linux/mutex.hpp"
#include "xos/mt/os/mutex.hpp"
#include "xos/mt/mutex.hpp"

namespace xos {
namespace app {
namespace console {
namespace mutex {

/// class maint
template 
<class TExtends = main_opt, 
 class TImplements = typename TExtends::implements>

class exported maint: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef maint derives;

    typedef typename extends::char_t char_t;
    typedef typename extends::end_char_t end_char_t;
    enum { end_char = extends::end_char };

    /// constructor / destructor
    maint() {
    }
    virtual ~maint() {
    }
private:
    maint(const maint& copy) {
    }

protected:
    /// run
    int run(::xos::locked& locked) {
        int err = 0;
        mseconds_t timeout = 0;
        bool untimed = this->infinite_timeout(timeout);
        this->outlln(__LOCATION__, "try {...", NULL);
        try {
            if (untimed) {
                this->outlln(__LOCATION__, "::xos::lock lock(locked)...", NULL);
                ::xos::lock lock(locked);
                this->outlln(__LOCATION__, "...::xos::lock lock(locked)", NULL);
            } else {
                if (0 < timeout) {
                    this->outlln(__LOCATION__, "::xos::lock lock(locked, timeout = ", unsigned_to_string(timeout).chars(), ")...", NULL);
                    ::xos::lock lock(locked, timeout);
                    this->outlln(__LOCATION__, "...::xos::lock lock(locked, timeout = ", unsigned_to_string(timeout).chars(), ")", NULL);
                } else {
                    this->outlln(__LOCATION__, "::xos::try_lock try_lock(locked)...", NULL);
                    ::xos::try_lock try_lock(locked);
                    this->outlln(__LOCATION__, "...::xos::try_lock try_lock(locked)", NULL);
                }
            }
            this->outlln(__LOCATION__, "...} try", NULL);
        } catch (const exception& e) {
            this->outlln(__LOCATION__, "...catch (const exception& e.status = \"", e.status_to_chars(), "\")", NULL);
            err = 1;
        } catch (...) {
            this->outlln(__LOCATION__, "...catch (...)", NULL);
            err = 1;
        }
        return err;
    }
    template <class TMutex>
    int run() {
        int err = 0;
        mseconds_t timeout = 0;
        bool untimed = this->infinite_timeout(timeout);
        this->outlln(__LOCATION__, "try {...", NULL);
        try {
            this->outlln(__LOCATION__, "TMutex mutex...", NULL);
            TMutex mutex;
            if (untimed) {
                err = run(mutex);
            } else {
                try {
                    this->outlln(__LOCATION__, "::xos::lock lock(mutex)...", NULL);
                    ::xos::lock lock(mutex);
                    if ((err = run(mutex))) {
                        err = 2;
                    }
                    this->outlln(__LOCATION__, "...} try", NULL);
                } catch (const exception& e) {
                    this->outlln(__LOCATION__, "...catch (const exception& e.status = \"", e.status_to_chars(), "\")", NULL);
                    err = 1;
                } catch (...) {
                    this->outlln(__LOCATION__, "...catch (...)", NULL);
                    err = 1;
                }
                if (2 == (err)) {
                    err = run(mutex);
                }
            }
            this->outlln(__LOCATION__, "...} try", NULL);
        } catch (const exception& e) {
            this->outlln(__LOCATION__, "...catch (const exception& e.status = \"", e.status_to_chars(), "\")", NULL);
            err = 1;
        } catch (...) {
            this->outlln(__LOCATION__, "...catch (...)", NULL);
            err = 1;
        }
        return err;
    }

    /// ...run
    virtual int windows_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::microsoft::windows::mutex >();
        return err;
    }
    virtual int osx_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::apple::osx::mutex >();
        return err;
    }
    virtual int solaris_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::oracle::solaris::mutex >();
        return err;
    }
    virtual int mach_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::mach::mutex >();
        return err;
    }
    virtual int linux_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::linux::mutex >();
        return err;
    }
    virtual int posix_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::posix::mutex >();
        return err;
    }
    virtual int os_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::os::mutex >();
        return err;
    }
    virtual int derived_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::derived::mutex >();
        return err;
    }
    virtual int default_run(int argc, char_t** argv, char_t** env) {
        int err = this->usage(argc, argv, env);
        return err;
    }
}; /// class maint
typedef maint<> main;

} /// namespace mutex
} /// namespace console
} /// namespace app
} /// namespace xos

#endif /// ndef XOS_APP_CONSOLE_MUTEX_MAIN_HPP
