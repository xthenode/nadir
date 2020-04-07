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
///   Date: 12/3/2019
///////////////////////////////////////////////////////////////////////
#ifndef XOS_CONSOLE_MAIN_HPP
#define XOS_CONSOLE_MAIN_HPP

#include "xos/console/io.hpp"
#include "xos/base/logger.hpp"

#if !defined(__LOCATION__)
#define __LOCATION__ __FILE__, "[", ::xos::unsigned_to_string(__LINE__).chars(), "] "
#endif /// !defined(__LOCATION__)

namespace xos {
namespace console {

/// class maint
template 
<typename TChar = char, class TIo = iot<TChar>,
 class TExtends = extend, class TImplements = TIo>
class exported maint: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef maint derives;

    typedef typename implements::file_t file_t;
    typedef typename implements::string_t string_t;
    typedef TChar char_t;
    typedef char_t end_char_t;
    enum { end_char = 0 };
    enum { exception_none, exception_unexpected, 
           exception_exist, exception_not_exist };
    
    /// constructor / destructor
    maint(): did_run_(false), did_usage_(false) {
        derives*& the_main = derives::the_main();
        if ((the_main)) {
            throw (exception_exist);
        } else {
            the_main = this;
        }
    }
    virtual ~maint() {
        derives*& the_main = derives::the_main();
        if ((the_main)) {
            if ((the_main != this)) {
                throw (exception_unexpected);
            } else {
                the_main = 0;
            }
        } else {
            throw (exception_not_exist);
        }
    }
private:
    maint(const maint& copy): did_run_(false), did_usage_(false) {
    }

protected:
    /// ...run...
    virtual int run(int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int before_run(int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int after_run(int argc, char_t** argv, char** env) {
        int err = 0;
        set_did_run();
        return err;
    }
    virtual int all_run(int argc, char_t** argv, char** env) {
        int err = 0;
        if (!(did_run())) {
            if (!(err = before_run(argc, argv, env))) {
                int err2 = 0;
                err = run(argc, argv, env);
                if ((err2 = after_run(argc, argv, env))) {
                    if (!(err)) err = err2;
                }
            }
        }
        return err;
    }
    virtual bool set_did_run(bool to = true) {
        did_usage_ = did_run_ = to;
        return did_run_;
    }
    virtual bool did_run() const {
        return did_run_;
    }

    /// ...usage...
    virtual int usage(int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int before_usage(int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int after_usage(int argc, char_t** argv, char** env) {
        int err = 0;
        set_did_usage();
        return err;
    }
    virtual int all_usage(int argc, char_t** argv, char** env) {
        int err = 0;
        if (!(did_usage())) {
            if (!(err = before_usage(argc, argv, env))) {
                int err2 = 0;
                err = usage(argc, argv, env);
                if ((err2 = after_usage(argc, argv, env))) {
                    if (!(err)) err = err2;
                }
            }
        }
        return err;
    }
    virtual bool set_did_usage(bool to = true) {
        did_run_ = did_usage_ = to;
        return did_usage_;
    }
    virtual bool did_usage() const {
        return did_usage_;
    }
    
    /// ...arguments...
    virtual int get_arguments(int argc, char_t** argv, char** env) {
        int err = 0, optind = this->arguments_index();
        if (argc > (optind)) {
            for (int argind = optind; argind < argc; ++argind) {
                if ((err = this->all_on_argument(argv[argind], argind-optind, argc, argv, env))) {
                    break;
                }
            }
        }
        return err;
    }
    virtual int before_get_arguments(int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int after_get_arguments(int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int all_get_arguments(int argc, char_t** argv, char** env) {
        int err = 0;
        if (!(err = before_get_arguments(argc, argv, env))) {
            int err2 = 0;
            err = get_arguments(argc, argv, env);
            if ((err2 = after_get_arguments(argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    virtual int arguments_index() const {
        return 1;
    }
    virtual const char_t* arguments(const char_t**& args) {
        args = 0;
        return 0;
    }

    /// ...on...argument...
    virtual int on_argument
    (const char_t* arg, int argind, int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int before_on_argument
    (const char_t* arg, int argind, int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int after_on_argument
    (const char_t* arg, int argind, int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int all_on_argument
    (const char_t* arg, int argind, int argc, char_t** argv, char** env) {
        int err = 0;
        if (!(err = before_on_argument(arg, argind, argc, argv, env))) {
            int err2 = 0;
            err = on_argument(arg, argind, argc, argv, env);
            if ((err2 = after_on_argument(arg, argind, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    virtual int on_missing_argument(const char_t* arg) {
        int err = 1;
        return err;
    }

    /// ...main...
    virtual int main(int argc, char_t** argv, char** env) {
        int err = 0;
        err = all_run(argc, argv, env);
        return err;
    }
    virtual int before_main(int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int after_main(int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int all_main(int argc, char_t** argv, char** env) {
        int err = 0;
        if (!(err = before_main(argc, argv, env))) {
            int err2 = 0;
            err = main(argc, argv, env);
            if ((err2 = after_main(argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }

    /// before / after / operator()
    virtual int before(int argc, char_t** argv, char** env) {
        int err = 0;
        err = all_get_arguments(argc, argv, env);
        return err;
    }
    virtual int after(int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int operator()(int argc, char_t** argv, char** env) {
        int err = 0;
        if (!(err = before(argc, argv, env))) {
            int err2 = 0;
            err = all_main(argc, argv, env);
            if ((err2 = after(argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }

public:
    /// the_main
    static int the_main(int argc, char_t** argv, char** env) {
        derives* the_main = 0;
        int err = 0;
        if ((the_main = derives::the_main())) {
            err = (*the_main)(argc, argv, env);
        } else {
            err = 1;
        }
        return err;
    }
protected:
    static derives*& the_main() {
        static derives* the_main = 0;
        return the_main;
    }

protected:
    bool did_run_, did_usage_;
}; /// class maint
typedef maint<> main;

} /// namespace console
} /// namespace xos

#endif /// ndef XOS_CONSOLE_MAIN_HPP
