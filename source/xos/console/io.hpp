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
///   File: io.hpp
///
/// Author: $author$
///   Date: 12/5/2019
///////////////////////////////////////////////////////////////////////
#ifndef _IO_HPP
#define _IO_HPP

#include "xos/base/to_string.hpp"
#include "xos/base/locked.hpp"

namespace xos {
namespace console {

/// in...
ssize_t inf(const char *format, ...);
ssize_t infv(const char *format, va_list va);
ssize_t in(char *what, size_t size);
ssize_t inf(file_t f, const char *format, ...);
ssize_t infv(file_t f, const char *format, va_list va);
ssize_t in(file_t f, char *what, size_t size);

/// out...
ssize_t outlln(const char *what, ...);
ssize_t outllnv(const char *what, va_list va);
ssize_t outl(const char *what, ...);
ssize_t outlv(const char *what, va_list va);
ssize_t outf(const char *format, ...);
ssize_t outfv(const char *format, va_list va);
ssize_t out(const char *what, size_t length);
ssize_t out(const char *what);
ssize_t outlln(file_t f, const char *what, ...);
ssize_t outllnv(file_t f, const char *what, va_list va);
ssize_t outl(file_t f, const char *what, ...);
ssize_t outlv(file_t f, const char *what, va_list va);
ssize_t outf(file_t f, const char *format, ...);
ssize_t outfv(file_t f, const char *format, va_list va);
ssize_t out(file_t f, const char *what, size_t length);
ssize_t out(file_t f, const char *what);
ssize_t outln(file_t f);
ssize_t out_flush(file_t f);

/// err...
ssize_t errlln(const char *what, ...);
ssize_t errl(const char *what, ...);
ssize_t errllnv(const char *what, va_list va);
ssize_t errlv(const char *what, va_list va);
ssize_t errf(const char *format, ...);
ssize_t errfv(const char *format, va_list va);
ssize_t err(const char *what, size_t length);
ssize_t err(const char *what);

/// class iot
template 
<typename TChar = char, typename TFile = FILE*, 
 class TLocked = locked, class TImplements = TLocked>

class exported iot: virtual public TImplements {
public:
    typedef TImplements implements;
    typedef iot derives;

    typedef TFile file_t;
    typedef int null_file_t;
    enum { null_file = 0 };

    typedef stringt<TChar> string_t;
    typedef TChar char_t;
    typedef char_t end_char_t;
    enum { end_char = 0 };

    typedef char_t what_t;
    typedef char_t sized_t;
    
public:
    /// in...
    virtual ssize_t inf(const sized_t *format, ...) {
        ssize_t count = 0;
        va_list va;
        va_start(va, format);
        count = this->infv(format, va);
        va_end(va);
        return count;
    }
    virtual ssize_t infv(const sized_t *format, va_list va) {
        return 0;
    }
    virtual ssize_t in(what_t *what, size_t size) {
        return 0;
    }
    virtual ssize_t in(file_t in, what_t *what, size_t size) {
        return 0;
    }
protected:
    virtual file_t in_std_in() {
        return std_in();
    }
    virtual file_t std_in() const {
        return (file_t)stdin;
    }

public:
    /// out...
    virtual ssize_t outln(const string_t& chars) {
        ssize_t count = 0, amount = 0;
        if (0 <= (count = out(chars))) {
            if (0 <= (amount = outln())) {
                count += amount;
            } else {
                count = amount;
            }
        }
        return count;
    }
    virtual ssize_t out(const string_t& chars) {
        ssize_t count = out(chars.chars(), chars.length());
        return count;
    }
    virtual ssize_t outlln(const what_t *what, ...) {
        ssize_t count = 0;
        va_list va;
        va_start(va, what);
        count = this->outllnv(what, va);
        va_end(va);
        return count;
    }
    virtual ssize_t outl(const what_t *what, ...) {
        ssize_t count = 0;
        va_list va;
        va_start(va, what);
        count = this->outlv(what, va);
        va_end(va);
        return count;
    }
    virtual ssize_t outllnv(const what_t *what, va_list va) {
        file_t f = out_std_out();
        return console::outllnv(f, what, va);
    }
    virtual ssize_t outlv(const what_t *what, va_list va) {
        file_t f = out_std_out();
        return console::outlv(f, what, va);
    }
    virtual ssize_t outf(const sized_t *format, ...) {
        ssize_t count = 0;
        va_list va;
        va_start(va, format);
        count = this->outfv(format, va);
        va_end(va);
        return count;
    }
    virtual ssize_t outfv(const sized_t *format, va_list va) {
        return 0;
    }
    virtual ssize_t out(const what_t *what, size_t length) {
        file_t f = out_std_out();
        return console::out(f, what, length);
    }
    virtual ssize_t out(const what_t *what) {
        file_t f = out_std_out();
        return console::out(f, what);
    }
    virtual ssize_t outln() {
        file_t f = out_std_out();
        return console::outln(f);
    }
    virtual ssize_t out_flush() {
        file_t f = out_std_out();
        return console::out_flush(f);
    }
protected:
    virtual file_t out_std_out() {
        return std_out();
    }
    virtual file_t std_out() const {
        return (file_t)stdout;
    }

public:
    /// err...
    virtual ssize_t errl(const what_t *what, ...) {
        ssize_t count = 0;
        va_list va;
        va_start(va, what);
        count = this->errlv(what, va);
        va_end(va);
        return count;
    }
    virtual ssize_t errlv(const what_t *what, va_list va) {
        return 0;
    }
    virtual ssize_t errf(const sized_t *format, ...) {
        ssize_t count = 0;
        va_list va;
        va_start(va, format);
        count = this->errfv(format, va);
        va_end(va);
        return count;
    }
    virtual ssize_t errfv(const sized_t *format, va_list va) {
        file_t f = err_std_err();
        return console::outfv(f, format, va);
    }
    virtual ssize_t err(const what_t *what, size_t length) {
        file_t f = err_std_err();
        return console::out(f, what, length);
    }
    virtual ssize_t err(const what_t *what) {
        file_t f = err_std_err();
        return console::out(f, what);
    }
    virtual ssize_t err_flush() {
        file_t f = err_std_err();
        return console::out_flush(f);
    }
protected:
    virtual file_t err_std_err() {
        return std_err();
    }
    virtual file_t std_err() const {
        return (file_t)stderr;
    }

}; /// class iot
typedef iot<> io;

} /// namespace console
} /// namespace xos

#endif /// ndef _IO_HPP
