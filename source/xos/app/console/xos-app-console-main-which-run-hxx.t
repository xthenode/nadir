%########################################################################
%# Copyright (c) 1988-2020 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: main-which-run-hxx.t
%#
%# Author: $author$
%#   Date: 6/25/2020
%########################################################################
%with(%
%is_which,%(%else-then(%is_which%,%(%is_Which%)%)%)%,%
%which,%(%else-then(%if-no(%is_which%,,%(%which%)%)%,%(%if-no(%is_which%,,%(which)%)%)%)%)%,%
%Which,%(%else-then(%if-no(%is_which%,,%(%Which%)%)%,%(%if-no(%is_which%,,%(%which%)%)%)%)%)%,%
%WHICH,%(%else-then(%WHICH%,%(%toupper(%Which%)%)%)%)%,%
%which,%(%else-then(%_which%,%(%tolower(%Which%)%)%)%)%,%
%is_run,%(%else-then(%is_run%,%(%is_Run%)%)%)%,%
%run,%(%else-then(%if-no(%is_run%,,%(%run%)%)%,%(%if-no(%is_run%,,%(run)%)%)%)%)%,%
%Run,%(%else-then(%if-no(%is_run%,,%(%Run%)%)%,%(%if-no(%is_run%,,%(%run%)%)%)%)%)%,%
%RUN,%(%else-then(%RUN%,%(%toupper(%Run%)%)%)%)%,%
%run,%(%else-then(%_run%,%(%tolower(%Run%)%)%)%)%,%
%%(
    /// ...%if-then(%Which%,_)%%Run%
    virtual int %if-then(%Which%,_)%%Run%(int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int before_%if-then(%Which%,_)%%Run%(int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int after_%if-then(%Which%,_)%%Run%(int argc, char_t** argv, char** env) {
        int err = 0;
        return err;
    }
    virtual int all_%if-then(%Which%,_)%%Run%(int argc, char_t** argv, char** env) {
        int err = 0;
        if (!(err = before_%if-then(%Which%,_)%%Run%(argc, argv, env))) {
            int err2 = 0;
            err = %if-then(%Which%,_)%%Run%(argc, argv, env);
            if ((err2 = after_%if-then(%Which%,_)%%Run%(argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
)%)%