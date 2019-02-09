(require 'lsp-mode)

(require 'lsp-ui)
(require 'company-lsp)

(setq lsp-enable-xref t)
(setq lsp-enable-completion-at-point t)
(setq lsp-prefer-flymake nil)
(setq lsp-auto-configure t)

(provide 'init-lsp)
