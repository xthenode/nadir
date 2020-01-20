///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2020 $organization$
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
///   Date: 1/20/2020
///////////////////////////////////////////////////////////////////////
#ifndef XOS_APP_CONSOLE_THREAD_MAIN_HPP
#define XOS_APP_CONSOLE_THREAD_MAIN_HPP

#include "xos/app/console/thread/main_opt.hpp"

namespace xos {
namespace app {
namespace console {
namespace thread {

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
    /*/
    int run(::xos::joined& joined) {
        int err = 0;
        mseconds_t timeout = 0;
        bool untimed = this->infinite_timeout(timeout);
        this->outlln(__LOCATION__, "try {...", NULL);
        try {
            if (untimed) {
                this->outlln(__LOCATION__, "::xos::join join(joined)...", NULL);
                ::xos::join join(joined);
                this->outlln(__LOCATION__, "...::xos::join join(joined)", NULL);
            } else {
                if (0 < timeout) {
                    this->outlln(__LOCATION__, "::xos::join join(joined, timeout = ", unsigned_to_string(timeout).chars(), ")...", NULL);
                    ::xos::join join(joined, timeout);
                    this->outlln(__LOCATION__, "...::xos::join join(joined, timeout = ", unsigned_to_string(timeout).chars(), ")", NULL);
                } else {
                    this->outlln(__LOCATION__, "::xos::try_join try_join(joined)...", NULL);
                    ::xos::try_join try_join(joined);
                    this->outlln(__LOCATION__, "...::xos::try_join try_join(joined)", NULL);
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
    template <class TThread>
    int run() {
        int err = 0;
        mseconds_t timeout = 0;
        bool untimed = this->infinite_timeout(timeout);
        this->outlln(__LOCATION__, "try {...", NULL);
        try {
            this->outlln(__LOCATION__, "TThread thread...", NULL);
            TThread thread;
            if (untimed) {
                err = run(thread);
            } else {
                try {
                    this->outlln(__LOCATION__, "::xos::join join(thread)...", NULL);
                    ::xos::join join(thread);
                    if ((err = run(thread))) {
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
                    err = run(thread);
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
    /*/
    
    /// ...run
    /*/
    virtual int windows_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::microsoft::windows::thread >();
        return err;
    }
    virtual int osx_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::apple::osx::thread >();
        return err;
    }
    virtual int solaris_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::oracle::solaris::thread >();
        return err;
    }
    virtual int mach_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::mach::thread >();
        return err;
    }
    virtual int linux_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::linux::thread >();
        return err;
    }
    virtual int posix_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::posix::thread >();
        return err;
    }
    virtual int os_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::os::thread >();
        return err;
    }
    virtual int derived_run(int argc, char_t** argv, char_t** env) {
        int err = this->run< ::xos::mt::derived::thread >();
        return err;
    }
    /*/
    virtual int default_run(int argc, char_t** argv, char_t** env) {
        int err = this->usage(argc, argv, env);
        return err;
    }
}; /// class maint
typedef maint<> main;

} /// namespace thread
} /// namespace console
} /// namespace app
} /// namespace xos

#endif /// ndef XOS_APP_CONSOLE_THREAD_MAIN_HPP 
