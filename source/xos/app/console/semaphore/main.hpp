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
///   Date: 1/4/2020
///////////////////////////////////////////////////////////////////////
#ifndef XOS_APP_CONSOLE_SEMAPHORE_MAIN_HPP
#define XOS_APP_CONSOLE_SEMAPHORE_MAIN_HPP

#include "xos/app/console/semaphore/main_opt.hpp"
#include "xos/mt/microsoft/windows/semaphore.hpp"
#include "xos/mt/apple/osx/semaphore.hpp"
#include "xos/mt/semaphore.hpp"

namespace xos {
namespace app {
namespace console {
namespace semaphore {

/// class maint
template 
<class TExtends = main_opt, 
 class TImplements = typename TExtends::implements>

class exported maint: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef maint derives;

    typedef typename extends::string_t string_t;
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
    int run(::xos::acquired& acquired) {
        int err = 0;
        mseconds_t timeout = 0;
        bool untimed = this->infinite_timeout(timeout);

        this->outlln(__LOCATION__, "try {...", NULL);
        for (unsigned tried = 0, tries = 1; tries; --tries, ++tried) {
            try {
                if (untimed) {
                    this->outlln(__LOCATION__, "::xos::acquire acquire(acquired)...", NULL);
                    ::xos::acquire acquire(acquired);
                } else {
                    if (timeout) {
                        this->outlln(__LOCATION__, "::xos::acquire acquire(acquired, timeout = ", unsigned_to_string(timeout).chars(), ")...", NULL);
                        ::xos::acquire acquire(acquired, timeout);
                    } else {
                        this->outlln(__LOCATION__, "::xos::try_acquire try_acquire(acquired)...", NULL);
                        ::xos::try_acquire try_acquire(acquired);
                    }
                }
                this->outlln(__LOCATION__, "...} try", NULL);
            } catch (const acquire_exception& e) {
                this->outlln(__LOCATION__, "...catch (const acquire_exception& e.status = \"", e.status_to_chars(), "\")", NULL);
                if ((acquire_busy == (e.status())) && (tried <  2)) {
                    ::xos::release release(acquired);
                    tries = 2;
                } else {
                    err = 1;
                }
            } catch (const exception& e) {
                this->outlln(__LOCATION__, "...catch (const exception& e.status = \"", e.status_to_chars(), "\")", NULL);
                err = 1;
            } catch (...) {
                this->outlln(__LOCATION__, "...catch (...)", NULL);
                err = 1;
            }
        }
        return err;
    }
    template <class TSemaphore>
    int run() {
        int err = 0;
        mseconds_t timeout = 0;
        bool untimed = this->infinite_timeout(timeout);

        this->outlln(__LOCATION__, "try {...", NULL);
        try {
            this->outlln(__LOCATION__, "TSemaphore semaphore...", NULL);
            TSemaphore semaphore;
            if (untimed) {
                this->outlln(__LOCATION__, "::xos::release release(semaphore)...", NULL);
                ::xos::release release(semaphore);
            }
            run(semaphore);
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
        return this->run< ::xos::mt::microsoft::windows::semaphore >();
    }
    virtual int osx_run(int argc, char_t** argv, char_t** env) {
        return this->run< ::xos::mt::apple::mach::semaphore >();
    }
    virtual int derived_run(int argc, char_t** argv, char_t** env) {
        return this->run< ::xos::mt::derived::semaphore >();
    }
    virtual int default_run(int argc, char_t** argv, char_t** env) {
        return this->usage(argc, argv, env);
    }
}; /// class maint
typedef maint<> main;

} /// namespace semaphore
} /// namespace console
} /// namespace app
} /// namespace xos

#endif /// ndef XOS_APP_CONSOLE_SEMAPHORE_MAIN_HPP 
