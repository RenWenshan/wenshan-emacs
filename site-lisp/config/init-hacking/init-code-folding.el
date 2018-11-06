(add-to-list 'hs-special-modes-alist
             '(nxml-mode "<!--\\|<[^/>]*[^/]>" "-->\\|</[^/>]*[^/]>" "<!--" sgml-skip-tag-forward nil))

(provide 'init-code-folding)
