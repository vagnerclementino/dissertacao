(TeX-add-style-hook
 "rascunho"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "brazil") ("inputenc" "utf8") ("xcolor" "table" "xcdraw")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "graphicx"
    "url"
    "babel"
    "inputenc"
    "enumerate"
    "tabularx"
    "multirow"
    "amsmath"
    "xcolor")
   (LaTeX-add-labels
    "sec:intro"
    "sec:justificativa"
    "sec:revisao"
    "sec:medotologia"
    "sec:slr"
    "sec:prova-de-conceito"
    "sec:avaliacao"
    "sec:cronograma")
   (LaTeX-add-bibliographies)))

