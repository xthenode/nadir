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
///   File: reader.hpp
///
/// Author: $author$
///   Date: 3/10/2020
///////////////////////////////////////////////////////////////////////
#ifndef XOS_IO_READER_HPP
#define XOS_IO_READER_HPP

#include "xos/io/seeker.hpp"

namespace xos {
namespace io {

///  Class: readert
template <class TImplements>
class exported readert: virtual public TImplements {
public:
    typedef TImplements implements;

    typedef typename implements::what_t what_t;
    typedef typename implements::sized_t sized_t;
    typedef typename implements::endof_t endof_t;
    static const endof_t endof = implements::endof;

    /// read / fill
    virtual ssize_t read(what_t* what, size_t size) {
        ssize_t count = 0;
        return count;
    }    
    virtual ssize_t fill() {
        ssize_t count = 0;
        return count;
    }    
}; /// class exported readert
typedef readert<seeker> reader;

typedef readert<char_seeker> char_reader;
typedef readert<tchar_seeker> tchar_reader;
typedef readert<wchar_seeker> wchar_reader;

typedef readert<byte_seeker> byte_reader;
typedef readert<word_seeker> word_reader;

} /// namespace io
} /// namespace xos

#endif /// ndef XOS_IO_READER_HPP 
