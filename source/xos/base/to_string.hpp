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
///   File: to_string.hpp
///
/// Author: $author$
///   Date: 12/5/2019
///////////////////////////////////////////////////////////////////////
#ifndef XOS_BASE_TO_STRING_HPP
#define XOS_BASE_TO_STRING_HPP

#include "xos/base/string.hpp"

namespace xos {

/// class char_to_stringt
template 
<typename TChar = char, 
 class TExtends = stringt<TChar>, class TImplements = implement>

class exported char_to_stringt: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef char_to_stringt derives;

    typedef typename extends::sstream_t sstream_t;
    typedef typename extends::string_t string_t;
    typedef typename extends::char_t char_t;
    typedef typename extends::end_char_t end_char_t;
    enum { end_char = extends::end_char };

    char_to_stringt(const char_to_stringt& copy): extends(copy) {
    }
    char_to_stringt(const char_t& chars) {
        const char_t apos = ((char_t)'\'');
        this->append(&apos, 1);
        this->append(&chars, 1);
        this->append(&apos, 1);
    }
    virtual ~char_to_stringt() {
    }

protected:
}; /// class char_to_stringt

typedef char_to_stringt<> char_to_string;

/// class chars_to_stringt
template 
<typename TChar = char, 
 class TExtends = stringt<TChar>, class TImplements = implement>

class exported chars_to_stringt: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef chars_to_stringt derives;

    typedef typename extends::sstream_t sstream_t;
    typedef typename extends::string_t string_t;
    typedef typename extends::char_t char_t;
    typedef typename extends::end_char_t end_char_t;
    enum { end_char = extends::end_char };

    chars_to_stringt(const char_t* chars, size_t length) {
        const char_t quote = ((char_t)'"');
        this->append(&quote, 1);
        this->append(chars, length);
        this->append(&quote, 1);
    }
    chars_to_stringt(const char_t* chars) {
        const char_t quote = ((char_t)'"');
        this->append(&quote, 1);
        this->append(chars);
        this->append(&quote, 1);
    }
    chars_to_stringt(const chars_to_stringt& copy): extends(copy) {
    }
    virtual ~chars_to_stringt() {
    }

protected:
}; /// class chars_to_stringt

typedef chars_to_stringt<> chars_to_string;

/// class to_stringt
template 
<typename TWhat, typename TChar = char, 
 class TExtends = stringt<TChar>, class TImplements = implement>

class exported to_stringt: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef to_stringt derives;

    typedef typename extends::sstream_t sstream_t;
    typedef typename extends::string_t string_t;
    typedef typename extends::char_t char_t;
    typedef typename extends::end_char_t end_char_t;
    enum { end_char = extends::end_char };

    to_stringt(const to_stringt& copy): extends(copy) {
    }
    to_stringt(const TWhat& what) {
        sstream_t sstream;
        sstream << what;
        this->append(sstream.str().c_str());
    }
    virtual ~to_stringt() {
    }

protected:
}; /// class to_stringt

typedef to_stringt<int> int_to_string;
typedef to_stringt<pointer_t> pointer_to_string;
typedef to_stringt<size_t> size_to_string;
typedef to_stringt<signed> signed_to_string;
typedef to_stringt<unsigned> unsigned_to_string;

} /// namespace xos

#endif /// ndef XOS_BASE_TO_STRING_HPP
