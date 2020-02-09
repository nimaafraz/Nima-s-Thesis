(TeX-add-style-hook
 "setup_and_packages"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "british") ("xcolor" "table") ("caption" "font=small") ("fontenc" "T1") ("inputenc" "latin1") ("hyperref" "pdfpagelabels" "breaklinks" "plainpages=false" "pdfstartview=FitH" "hyperfootnotes=false" "hidelinks") ("acronym" "printonlyused" "nohyperlinks") ("natbib" "numbers" "sort&compress") ("tocbibind" "notbib") ("appendix" "titletoc" "page" "header") ("titlesec" "sf" "bf") ("tocloft" "subfigure" "titles") ("algorithm" "algoruled" "medskip" "dontprintsemicolon" "linesnumbered" "Algorithm") ("algpseudocode" "noend") ("overpic" "percent") ("adjustbox" "export") ("geometry" "a4paper" "bindingoffset=1.8cm" "left=2cm" "top=1.8cm" "headheight=15pt" "hcentering" "vcentering" "includeheadfoot") ("IEEEtrantools" "redeflists")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "babel"
    "setspace"
    "paralist"
    "colortbl"
    "xcolor"
    "amsmath"
    "amsfonts"
    "amsthm"
    "bm"
    "graphicx"
    "float"
    "placeins"
    "subfigure"
    "caption"
    "fontenc"
    "inputenc"
    "color"
    "eurosym"
    "hyperref"
    "breakurl"
    "pdfpages"
    "acronym"
    "natbib"
    "tocbibind"
    "appendix"
    "makeidx"
    "fancyhdr"
    "titlesec"
    "tocloft"
    "cleveref"
    "mathtools"
    "multirow"
    "threeparttable"
    "pifont"
    "dsfont"
    "amssymb"
    "stfloats"
    "psfrag"
    "algorithm"
    "algpseudocode"
    "overpic"
    "adjustbox"
    "enumitem"
    "comment"
    "geometry"
    "IEEEtrantools"
    "etex"
    "tikz"
    "chronology"
    "units"
    "footnote"
    "hhline"
    "diagbox"
    "rotating")
   (TeX-add-symbols
    '("chapstar" 1)
    '("corr" 2)
    '("todo" 1)
    '("dft" 1)
    '("fs" 1)
    '("pdv" 1)
    '("e" 1)
    '("E" 1)
    '("IM" 1)
    '("RE" 1)
    '("field" 1)
    '("seq" 1)
    '("set" 1)
    '("abs" 1)
    '("norm" 1)
    '("chapquote" 3)
    '("Tab" 1)
    '("Prop" 1)
    '("Cpt" 1)
    '("LineAlg" 1)
    '("App" 1)
    '("Corollary" 1)
    '("Theorem" 1)
    '("Lemma" 1)
    '("Alg" 1)
    '("Eq" 1)
    '("Sec" 1)
    '("cFig" 1)
    '("Fig" 1)
    '("indicator" 1)
    '("foottriplestar" 1)
    '("footdoublestar" 1)
    '("footstar" 1)
    '("yale" 1)
    "authorname"
    "Mc"
    "Lc"
    "Fc"
    "Tc"
    "Pc"
    "Sc"
    "Cc"
    "Nc"
    "Dc"
    "Wc"
    "Bc"
    "Qc"
    "Ac"
    "Pb"
    "Eb"
    "Rb"
    "sinr"
    "sir"
    "Rs"
    "Rp"
    "Nb"
    "argmax"
    "argmin"
    "mcmint"
    "Phio"
    "Phiib"
    "hPhi"
    "Gxo"
    "tl"
    "Bf"
    "Ic"
    "Xc"
    "Pd"
    "hSc"
    "hScr"
    "dt"
    "rev"
    "myprime"
    "mydprime"
    "mytrprime"
    "tp"
    "bp"
    "nash"
    "nbs"
    "kss"
    "ubs"
    "tne"
    "bne"
    "tnbs"
    "bnbs"
    "hbne"
    "hb"
    "hpm"
    "Phin"
    "hPhin"
    "Phim"
    "Rss"
    "rs"
    "xs"
    "lambdap"
    "Zp"
    "Ed"
    "mno"
    "ott"
    "Vbf"
    "Wbf"
    "Abf"
    "Zf"
    "Af"
    "Cf"
    "cmark"
    "xmark"
    "Real"
    "Complex"
    "Int"
    "Nat"
    "eps"
    "To"
    "herm"
    "tran"
    "dv"
    "sigfs"
    "sigifs"
    "sigfsud"
    "sigifsud"
    "ie"
    "eg"
    "etal"
    "cleardoublepage")
   (LaTeX-add-array-newcolumntypes
    "w")
   (LaTeX-add-xcolor-definecolors
    "LightCyan"
    "Red"
    "Green"
    "DarkGreen"
    "Blue"
    "Orange"
    "White"
    "darkblue"
    "darkgreen"
    "darkred")
   (LaTeX-add-amsthm-newtheorems
    "property"
    "lemma"
    "proposition"
    "theorem"
    "corollary"
    "thm"
    "cor"
    "lem"
    "prop"
    "defn"
    "rem")
   (LaTeX-add-mathtools-DeclarePairedDelimiters
    '("ceil" "")))
 :latex)

