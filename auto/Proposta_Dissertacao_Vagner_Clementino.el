(TeX-add-style-hook
 "Proposta_Dissertacao_Vagner_Clementino"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("ppgccufmg" "msc" "proposal" "hidelot" "hideabstract")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "brazil") ("fontenc" "T1") ("inputenc" "utf8x") ("hyperref" "a4paper" "portuguese" "bookmarks=true" "bookmarksnumbered=true" "linktocpage" "colorlinks=true" "citecolor=black" "urlcolor=black" "linkcolor=black" "filecolor=black" "") ("xcolor" "table" "xcdraw")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "latex2e"
    "ppgccufmg"
    "ppgccufmg10"
    "babel"
    "fontenc"
    "inputenc"
    "graphicx"
    "hyperref"
    "xcolor")
   (LaTeX-add-labels
    "ch:Contexto"
    "fig:world_map"
    "ch:justificativa"
    "fig:fluxo_dados"
    "fig:interfaces"
    "fig:fluxo_info_xbrl"
    "fig:docs_xbrl"
    "fig:taxonomia_xbrl"
    "fig:arquivo_xsd"
    "ch:revisao"
    "ch:metodologia"
    "sec:revisao_sistematica"
    "sec:survey"
    "sec:prova-conceito"
    "sec:avaliacao"
    "ch:conclusao_trab_futuros"
    "tab:cronograma")))

