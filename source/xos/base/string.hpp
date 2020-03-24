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
///   File: string.hpp
///
/// Author: $author$
///   Date: 12/5/2019
///////////////////////////////////////////////////////////////////////
#ifndef XOS_BASE_STRING_HPP
#define XOS_BASE_STRING_HPP

#include "xos/base/chars.hpp"
#include <stdarg.h>
#include <locale>
#include <string>
#include <sstream>

namespace xos {

/// class stringt
template 
<typename TChar = char, 
 typename TEndChar = TChar, TEndChar VEndChar = 0, 
 class TSStream = ::std::basic_stringstream<TChar>,
 class TString = ::std::basic_string<TChar>, 
 class TChars = charst<TChar, TEndChar, VEndChar>,
 class TImplements = TChars, class TExtends = TString>

class exported stringt: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef stringt derives;

    typedef TSStream sstream_t;
    typedef TString string_t;
    typedef TChar char_t;
    typedef TEndChar end_char_t;
    enum { end_char = VEndChar };

    /// constructor / destructor
    stringt(const char_t* chars, size_t length) {
        if ((chars) && (length)) {
            this->append(chars, length);
        }
    }
    stringt(const char_t* chars) {
        if ((chars)) {
            this->append(chars);
        }
    }
    stringt(const string_t& copy): extends(copy) {
    }
    stringt(const stringt& copy): extends(copy) {
    }
    stringt() {
    }
    virtual ~stringt() {
    }
    
    /// assign...
    virtual stringt& assignX(const void* in, size_t length, bool upper_case = true) {
        this->assignx(in, length, upper_case);
        return *this;
    }
    virtual stringt& assignx(const void* in, size_t length, bool upper_case = true) {
        this->clear();
        this->appendx(in, length, upper_case);
        return *this;
    }
    virtual stringt& assignl(const char_t* chars, ...) {
        va_list va; va_start(va, chars);
        assignv(chars, va);
        va_end(va);
        return *this;
    }
    virtual stringt& assignv(const char_t* chars, va_list va) {
        this->clear();
        return appendv(chars, va);
    }
    virtual stringt& assign_char(char_t value) {
        this->clear();
        this->append_char(value);
        return *this;
    }
    virtual stringt& assign_signed(const signed& value) {
        this->clear();
        this->append_signed(value);
        return *this;
    }
    virtual stringt& assign_unsigned(const unsigned& value) {
        this->clear();
        this->append_unsigned(value);
        return *this;
    }

    /// append...
    virtual stringt& appendX(const void* in, size_t length, bool upper_case = true) {
        this->appendx(in, length, upper_case);
        return *this;
    }
    virtual stringt& appendx(const void* in, size_t length, bool upper_case = false) {
        const byte_t* bytes = (const byte_t*)(in);
        if ((bytes) && (length)) {
            char_t x[2];
            byte_t b;
            for (; 0 < length; --length) {
                b = (*bytes++);
                x[0] = this->to_x(b >> 4, upper_case);
                x[1] = this->to_x(b & 15, upper_case);
                this->append(x, 2);
            }
        }
        return *this;
    }
    virtual stringt& appendl(const char_t* chars, ...) {
        va_list va; va_start(va, chars);
        appendv(chars, va);
        va_end(va);
        return *this;
    }
    virtual stringt& appendv(const char_t* chars, va_list va) {
        typedef const char_t* const_chars_t;
        if ((chars)) {
            do { this->append(chars);
            } while ((chars = va_arg(va, const_chars_t)));
        }
        return *this;
    }
    virtual stringt& append_char(char_t value) {
        this->append(&value, 1);
        return *this;
    }
    virtual stringt& append_signed(const signed& value) {
        sstream_t sstream; sstream << value;
        this->append(sstream.str().c_str());
        return *this;
    }
    virtual stringt& append_unsigned(const unsigned& value) {
        sstream_t sstream; sstream << value;
        this->append(sstream.str().c_str());
        return *this;
    }

    /// to...
    virtual signed to_signed() const {
        signed to = 0;
        sstream_t ss(*this);
        ss >> to;
        return to;
    }
    virtual unsigned to_unsigned() const {
        unsigned to = 0;
        sstream_t ss(*this);
        ss >> to;
        return to;
    }
    virtual bool to_bool() const {
        bool to = 0;
        sstream_t ss(*this);
        ss >> to;
        return to;
    }

    /// ...chars
    virtual const char_t* has_chars(size_t& length) const {
        const char_t* chars = this->c_str();
        length = this->length();
        return (length)?(chars):(0);
    }
    virtual const char_t* has_chars() const {
        const char_t* chars = this->c_str();
        size_t length = this->length();
        return (length)?(chars):(0);
    }
    virtual const char_t* chars(size_t& length) const {
        length = this->length();
        return this->c_str();
    }
    virtual const char_t* chars() const {
        return this->c_str();
    }

    virtual int cased_compare(const stringt& to) const {
        int unequal = case_compare(*this, to, cased_compare);
        return unequal;
    }
    virtual int uncased_compare(const stringt& to) const {
        int unequal = case_compare(*this, to, uncased_compare);
        return unequal;
    }
protected:
    static int case_compare
    (const stringt& s, const stringt& to,
     int compare(const char_t& c, const char_t& c2)) {
        int unequal = 0, compared = 0;
        const char *chars = 0, *to_chars = 0, *end = 0;
        size_t length = 0, to_length = 0;

        if ((chars = s.has_chars(length))) {
            if ((to_chars = to.has_chars(to_length))) {
                if (((end = (chars + length)) - chars) > to_length) {
                    end = (chars + to_length);
                    unequal = 1;
                } else {
                    if (to_length > length) {
                        unequal = -1;
                    }
                }
                for (; chars != end; ++chars, ++to_chars) {
                    if ((compared = compare(*chars, *to_chars))) {
                        return compared;
                    }
                }
            } else {
                unequal = 1;
            }
        } else {
            if ((to_chars = to.has_chars(to_length))) {
                unequal = -1;
            }
        }
        return unequal;
    }
    static int cased_compare(const char_t& c, const char_t& c2) {
        if (c > c2) { return 1; } else {
            if (c < c2) { return -1; }
        }
        return 0;
    }
    static int uncased_compare(const char_t& c, const char_t& c2) {
        ::std::locale locale;
        return cased_compare(::std::tolower(c, locale), ::std::tolower(c2, locale));
    }
}; /// class stringt

typedef stringt<> string;
typedef stringt<char> char_string;
typedef stringt<tchar_t> tchar_string;
typedef stringt<wchar_t> wchar_string;

} /// namespace xos

#endif /// ndef XOS_BASE_STRING_HPP
