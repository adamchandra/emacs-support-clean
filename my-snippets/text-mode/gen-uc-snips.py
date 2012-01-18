#!/bin/env python
# -*- coding: utf-8 -*-

import codecs
d = [
    ("/ro"        , "RING OPERATOR"              ), # ∘
    ("/map"       , "RING OPERATOR"              ), # ∘
    ("/fmap"      , "RING OPERATOR"              ), # ∘
    ("/x"         , "ASTERISK OPERATOR"          ), # ∗
    ("/ast"       , "ASTERISK OPERATOR"          ), # ∗
    ("/xo"        , "CIRCLED ASTERISK OPERATOR"  ), # ⊛
    ("/apply"     , "CIRCLED ASTERISK OPERATOR"  ), # ⊛
    ("/applic"    , "CIRCLED ASTERISK OPERATOR"  ), # ⊛
    ("/exists"    , "THERE EXISTS"               ), # ∃
    ("/forall"    , "FOR ALL"                    ), # ∀
    ("/elem"      , "ELEMENT OF"                 ), # ∈
    ("/contains"  , "CONTAINS AS MEMBER"         ), # ∋
    ("/bullet"    , "BULLET OPERATOR"            ), # ∙
    ("/contramap" , "BULLET OPERATOR"            ), # ∙
    ("/xmap"      , "BULLET OPERATOR"            ), # ∙
    ("/ga"        , "GREEK SMALL LETTER ALPHA"   ), # α
    ("/gb"        , "GREEK SMALL LETTER BETA"    ), # β
    ("/gl"        , "GREEK SMALL LETTER LAMDA"   ), # λ
    ("/lambda"    , "GREEK SMALL LETTER LAMDA"   ), # λ
    ("/gm"        , "GREEK SMALL LETTER MU"      ), # μ
    ("/join"      , "GREEK SMALL LETTER MU"      ), # μ
    ("/pure"      , "GREEK SMALL LETTER ETA"     ), # η
    ("/eta"       , "GREEK SMALL LETTER ETA"     ), # η
    ("/dual"      , "GREEK SMALL LETTER SIGMA"   ), # σ 
    ("/rab"       , "RIGHTWARDS ARROW FROM BAR"  ), # ↦
    ("/traverse"  , "RIGHTWARDS ARROW FROM BAR"  ), # ↦
    ("/ra"        , "RIGHTWARDS ARROW"           ), # →
    ("/la"        , "LEFTWARDS ARROW"            ), # ←
    ("/rda"       , "RIGHTWARDS DOUBLE ARROW"    ), # ⇒
    ("/lda"       , "LEFTWARDS DOUBLE ARROW"     ), # ⇐
    ("/mappend"   , "HERMITIAN CONJUGATE MATRIX" ), # ⊹
    ("/plus"      , "HERMITIAN CONJUGATE MATRIX" ), # ⊹
    ("/eq3"       , "QUESTIONED EQUAL TO"        ), # ≟
    ("/eq?"       , "QUESTIONED EQUAL TO"        ), # ≟
    ("/neq"       , "NOT EQUAL TO"               ), # ≠
    ("/md"        , "MIDDLE DOT"                 ), # ·
    ("/dot"       , "MIDDLE DOT"                 ), # ·
    ]


s = u"""
# author: adamchandra, using gen-ucs-snips.py
# name: {value}:{key}
# key: {key}
# --
`(ucs-insert (cdr (assoc-string "{value}" (ucs-names) t)))`"""

filenum = 0
for (k, v) in d:
    print k, v
    filenum = filenum + 1
    fn = "autogen-ucs-insert-key-" + k[1:]
    with codecs.open(fn, "w", "utf-8") as f:
        r = s.format(key=k, name=v, value=v)
        f.write(r)

















#     u"\gA"  : u"GREEK CAPITAL LETTER ALPHA",
#     u"\gb"  : u"GREEK CAPITAL LETTER BETA",
#     u"\gc"  : u"GREEK CAPITAL LETTER CHI",
#     # u"\g" : u"GREEK CAPITAL LETTER DEI",
#     u"\gd"  : u"GREEK CAPITAL LETTER DELTA",
#     # u"\g" : u"GREEK CAPITAL LETTER DIGAMMA",
#     u"\ge"  : u"GREEK CAPITAL LETTER EPSILON",
#     u"\ge"  : u"GREEK CAPITAL LETTER ETA",
#     u"\gf"  : u"GREEK CAPITAL LETTER FEI",
#     u"\gg"  : u"GREEK CAPITAL LETTER GAMMA",
#     # u"\g" : u"GREEK CAPITAL LETTER GANGIA",
#     # u"\g" : u"GREEK CAPITAL LETTER HETA",
#     # u"\g" : u"GREEK CAPITAL LETTER HORI",
#     u"\gi"  : u"GREEK CAPITAL LETTER IOTA",
#     u"\gk"  : u"GREEK CAPITAL LETTER KAPPA",
#     # u"\g" : u"GREEK CAPITAL LETTER KHEI",
#     # u"\g" : u"GREEK CAPITAL LETTER KOPPA",
#     u"\gl"  : u"GREEK CAPITAL LETTER LAMBDA",
#     u"\gl"  : u"GREEK CAPITAL LETTER LAMDA",
#     u"\gm"  : u"GREEK CAPITAL LETTER MU",
#     u"\gn"  : u"GREEK CAPITAL LETTER NU",
#     u"\go"  : u"GREEK CAPITAL LETTER OMEGA",
#     # u"\g" : u"GREEK CAPITAL LETTER OMICRON",
#     u"\gp"  : u"GREEK CAPITAL LETTER PHI",
#     u"\gp"  : u"GREEK CAPITAL LETTER PI",
#     # u"\g" : u"GREEK CAPITAL LETTER PSI",
#     u"\gr"  : u"GREEK CAPITAL LETTER RHO",
#     # u"\g" : u"GREEK CAPITAL LETTER SAMPI",
#     # u"\g" : u"GREEK CAPITAL LETTER SAN",
#     # u"\g" : u"GREEK CAPITAL LETTER SHEI",
#     # u"\g" : u"GREEK CAPITAL LETTER SHIMA",
#     # u"\g" : u"GREEK CAPITAL LETTER SHO",
#     u"\gs"  : u"GREEK CAPITAL LETTER SIGMA",
#     # u"\g" : u"GREEK CAPITAL LETTER STIGMA",
#     u"\gt"  : u"GREEK CAPITAL LETTER TAU",
#     u"\gt"  : u"GREEK CAPITAL LETTER THETA",
#     u"\gu"  : u"GREEK CAPITAL LETTER UPSILON",
#     u"\gx"  : u"GREEK CAPITAL LETTER XI",
#     u"\gz"  : u"GREEK CAPITAL LETTER ZETA",
