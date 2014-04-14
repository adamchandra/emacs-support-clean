Quickstart

     (require 'ucs-utils)

     (ucs-utils-char "Middle Dot"         ; character to return
                     ?.                   ; fallback if unavailable
                     'char-displayable-p) ; test for character to pass

     (ucs-utils-first-existing-char '("White Bullet"
                                      "Bullet Operator"
                                      "Circled Bullet"
                                      "Middle Dot"
                                      ?.) 'cdp)

     (ucs-utils-string "Horizontal Ellipsis" '[["..."]])

Explanation

This library provides utilities for manipulating Unicode
characters, with integrated ability to return fallback characters
when Unicode display is not possible.

Some ambiguities in Emacs' built-in Unicode data are resolved, and
character support is updated to Unicode 6.3.

There are three interactive commands:

    `ucs-utils-ucs-insert'       ; `ucs-insert' workalike using ido
    `ucs-utils-eval'             ; the inverse of `ucs-insert'
    `ucs-utils-install-aliases'  ; install shorter aliases

The other functions are only useful from other Lisp code:

    `ucs-utils-char'
    `ucs-utils-first-existing-char'
    `ucs-utils-vector'
    `ucs-utils-string'
    `ucs-utils-intact-string'
    `ucs-utils-pretty-name'
    `ucs-utils-read-char-by-name'
    `ucs-utils-subst-char-in-region'

To use ucs-utils, place the ucs-utils.el library somewhere Emacs
can find it, and add the following to your ~/.emacs file:

    (require 'ucs-utils)

and optionally

    (ucs-install-aliases)

See Also

    M-x customize-group RET ucs-utils RET
    http://en.wikipedia.org/wiki/Universal_Character_Set

Notes

Compatibility and Requirements

    GNU Emacs version 24.4-devel     : yes, at the time of writing
    GNU Emacs version 24.3           : yes
    GNU Emacs version 23.3           : yes (*)
    GNU Emacs version 22.3 and lower : no

    (*) For full Emacs 23.x support, the library ucs-utils-6.0-delta.el
        should also be installed.

    Uses if present: persistent-soft.el (Recommended)

Bugs

TODO

    Accept synonyms on inputs? at least Tab would be nice.

    Separate test run without persistent-soft.el

License

Simplified BSD License:

Redistribution and use in source and binary forms, with or
without modification, are permitted provided that the following
conditions are met:

   1. Redistributions of source code must retain the above
      copyright notice, this list of conditions and the following
      disclaimer.

   2. Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials
      provided with the distribution.

This software is provided by Roland Walker "AS IS" and any express
or implied warranties, including, but not limited to, the implied
warranties of merchantability and fitness for a particular
purpose are disclaimed.  In no event shall Roland Walker or
contributors be liable for any direct, indirect, incidental,
special, exemplary, or consequential damages (including, but not
limited to, procurement of substitute goods or services; loss of
use, data, or profits; or business interruption) however caused
and on any theory of liability, whether in contract, strict
liability, or tort (including negligence or otherwise) arising in
any way out of the use of this software, even if advised of the
possibility of such damage.

The views and conclusions contained in the software and
documentation are those of the authors and should not be
interpreted as representing official policies, either expressed
or implied, of Roland Walker.

No rights are claimed over data created by the Unicode
Consortium, which are included here under the terms of
the Unicode Terms of Use.
