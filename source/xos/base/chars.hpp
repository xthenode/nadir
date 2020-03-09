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
///   File: chars.hpp
///
/// Author: $author$
///   Date: 3/7/2020
///////////////////////////////////////////////////////////////////////
#ifndef XOS_BASE_CHARS_HPP
#define XOS_BASE_CHARS_HPP

#include "xos/base/base.hpp"

namespace xos {

/// class charst
template 
<typename TChar = char, 
 typename TEndChar = TChar, TEndChar VEndChar = 0, 
 class TImplements = implement>

class exported charst: virtual public TImplements {
public:
    typedef TImplements implements;
    typedef charst derives;

    typedef TChar char_t;
    typedef TEndChar end_char_t;
    enum { end_char = VEndChar };

    static char_t to_lower(char_t what) {
        static const char_t A = ((char_t)'A');
        static const char_t Z = ((char_t)'Z');
        static const char_t a = ((char_t)'a');
        if ((what >= A) && (what <= Z)) {
            what = a + (what - A);
        }
        return what;
    }
    static char_t to_upper(char_t what) {
        static const char_t A = ((char_t)'A');
        static const char_t a = ((char_t)'a');
        static const char_t z = ((char_t)'z');
        if ((what >= a) && (what <= z)) {
            what = A + (what - a);
        }
        return what;
    }
    static char_t to_case(char_t what) {
        return what;
    }
    static char_t to_x(byte_t d, bool upper_case = false) {
        char a = (upper_case)?('A'):('a');
        char_t x = (char_t)(0);
        if ((0 <= d) && (9 >= d)) {
            x = (char_t)(('0') +  d);
        } else {
            if ((10 <= d) && (15 >= d)) {
                x = (char_t)((a) + (d - 10));
            }
        }
        return x;
    }
}; /// class charst
typedef charst<> chars;

} /// namespace xos

#endif /// ndef XOS_BASE_CHARS_HPP 
