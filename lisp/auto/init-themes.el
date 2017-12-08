(TeX-add-style-hook
 "init-themes"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "presentation")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem") ("fncychap" "Lenny") ("rotating" "figuresright")))
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref"
    "fncychap"
    "booktabs"
    "tabularx"
    "fancyhdr"
    "tikz"
    "float"
    "geometry"
    "xunicode"
    "indentfirst"
    "fontspec"
    "xcolor"
    "listings")))

