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
///   File: locked.hpp
///
/// Author: $author$
///   Date: 12/5/2019
///////////////////////////////////////////////////////////////////////
#ifndef XOS_BASE_LOCKED_HPP
#define XOS_BASE_LOCKED_HPP

#include "xos/base/exception.hpp"

namespace xos {

/// enum lock_status
typedef int lock_status;
enum {
    /// lock, ...
    lock_success = 0,
    lock_failed,
    lock_busy,
    lock_timeout,
    lock_interrupted,
    
    /// unlock, ...
    unlock_failed,
    unlock_busy,
    unlock_timeout,
    unlock_interrupted,
    unlock_success = lock_success
}; /// enum lock_status

/// function lock_status_to_chars
inline const char* lock_status_to_chars(lock_status status) {
    switch(status) {
    /// lock, ...
    case lock_success: return "lock_success";
    case lock_failed: return "lock_failed";
    case lock_busy: return "lock_busy";
    case lock_timeout: return "lock_timeout";
    case lock_interrupted: return "lock_interrupted";

    /// unlock, ...
    case unlock_failed: return "unlock_failed";
    case unlock_busy: return "unlock_busy";
    case unlock_timeout: return "unlock_timeout";
    case unlock_interrupted: return "unlock_interrupted";
    }
    return "unknown";
}

/// class lock_exceptiont
template <class TExtends = exceptiont<lock_status>, class TImplements = typename TExtends::implements>
class exported lock_exceptiont: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef lock_exceptiont derives;

    /// constructor / destructor
    lock_exceptiont(const lock_exceptiont& copy): extends(copy) {
    }
    lock_exceptiont(lock_status status): extends(status) {
    }

    /// ...status...
    virtual const char* status_to_chars() const {
        return lock_status_to_chars(this->status());
    }

protected:
}; /// class lock_exceptiont
typedef lock_exceptiont<> lock_exception;
     
/// class lockedt 
template <class TImplements = implement>
class exported lockedt: virtual public TImplements {
public:
    typedef TImplements implements;
    typedef lockedt derives;

    typedef xos::lock_status lock_status;
    enum {
        lock_success = xos::lock_success,
        lock_failed = xos::lock_failed,
        unlock_success = xos::unlock_success,
        unlock_failed = xos::unlock_failed
    };
    
    /// lock...
    virtual bool lock() {
        return (lock_success == untimed_lock());
    }
    virtual lock_status timed_lock(mseconds_t milliseconds) {
        return lock_success;
    }
    virtual lock_status untimed_lock() {
        return lock_success;
    }
    virtual lock_status try_lock() {
        return lock_success;
    }

    /// unlock...
    virtual bool unlock() {
        return (unlock_success == untimed_lock());
    }
    virtual lock_status timed_unlock(mseconds_t milliseconds) {
        return lock_success;
    }
    virtual lock_status untimed_unlock() {
        return lock_success;
    }
    virtual lock_status try_unlock() {
        return lock_success;
    }
}; /// class lockedt
typedef lockedt<> locked;

/// class lockt
template <class TExtends = extend, class TImplements = implement>
class exported lockt: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef lockt derives;

    /// constructor / destructor
    lockt(locked& _locked, mseconds_t mseconds): locked_(_locked) {
        if (!(locked_.timed_lock(mseconds))) {
            throw lock_exception(lock_failed);
        }
    }
    lockt(locked& _locked): locked_(_locked) {
        if (!(locked_.lock())) {
            throw lock_exception(lock_failed);
        }
    }
    virtual ~lockt() {
        if (!(locked_.unlock())) {
            throw lock_exception(unlock_failed);
        }
    }
private:
    lockt(const lockt& copy): locked_(this_locked_) {
        throw exception(exception_unexpected);
    }

protected:
    locked this_locked_, &locked_;
}; /// class lockt
typedef lockt<> lock;

/// class try_lockt
template <class TExtends = extend, class TImplements = implement>
class exported try_lockt: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef try_lockt derives;

    /// constructor / destructor
    try_lockt(locked& _locked): locked_(_locked) {
        if (!(locked_.try_lock())) {
            throw lock_exception(lock_failed);
        }
    }
    virtual ~try_lockt() {
        if (!(locked_.unlock())) {
            throw lock_exception(unlock_failed);
        }
    }
private:
    try_lockt(const try_lockt& copy): locked_(this_locked_) {
        throw exception(exception_unexpected);
    }

protected:
    locked this_locked_, &locked_;
}; /// class try_lockt
typedef try_lockt<> try_lock;

} /// namespace xos

#endif /// ndef XOS_BASE_LOCKED_HPP
