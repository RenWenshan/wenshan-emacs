(use-package lsp-mode
  :hook ((js-mode     . lsp)
         (python-mode . lsp)
         (c-mode      . lsp)
         (c++-mode    . lsp)
         )
  :commands (lsp)
  :config
  (setq lsp-enable-xref t)
  (setq lsp-enable-completion-at-point t)
  (setq lsp-prefer-flymake nil))

(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)

(provide 'init-lsp)
