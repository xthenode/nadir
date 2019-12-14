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
#ifndef _MAIN_HPP
#define _MAIN_HPP

#include "xos/base/logger.hpp"
#include <stdarg.h>
#include <stdio.h>

namespace xos {
namespace console {

/// class maint
template 
<typename TChar = char, typename TEndChar = TChar, TEndChar VEndChar = 0, 
 class TExtends = extend, class TImplements = implement>
class exported maint: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef maint derives;

    typedef TChar char_t;
    typedef TEndChar end_char_t;
    enum { end_char = VEndChar };
    enum { exception_none, exception_unexpected, 
           exception_exist, exception_not_exist };
    
    /// constructor / destructor
    maint() {
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
    maint(const maint& copy): extends(copy) {
    }

protected:
    /// ...main...
    virtual int main(int argc, char_t** argv, char** env) {
        int err = 0;
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
    virtual int operator()(int argc, char_t** argv, char** env) {
        int err = 0;
        if (!(err = before_main(argc, argv, env))) {
            int err2 = 0;
            err = main(argc, argv, env);
            if ((err2 = after_main(argc, argv, env))) {
                if (!(err)) err = err2;
            }
        } else {
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
}; /// class maint
typedef maint<> main;

} /// namespace console
} /// namespace xos

#endif /// ndef _MAIN_HPP
