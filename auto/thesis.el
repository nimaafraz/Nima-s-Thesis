(TeX-add-style-hook
 "thesis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("report" "10pt" "a4paper" "oneside" "openright")))
   (TeX-run-style-hooks
    "latex2e"
    "src/setup_and_packages"
    "src/title"
    "src/after_title_setup"
    "src/declaration"
    "src/summary"
    "src/acknowledgements"
    "report"
    "rep10")
   (LaTeX-add-labels
    "cpt:introduction"
    "cpt:key_trends"
    "cpt:background"
    "cpt:multi-operator_patterns"
    "cpt:inter-operator_sharing"
    "cpt:ott-mno_sharing"
    "cpt:broader_impact"
    "cpt:appendix"
    "cpt:acronyms")
   (LaTeX-add-bibliographies
    "./bib/IEEEfull"))
 :latex)

