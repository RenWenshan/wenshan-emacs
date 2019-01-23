(require 'lsp-mode)

(require 'lsp-ui)
(require 'company-lsp)

(setq lsp-enable-xref t)
(setq lsp-enable-completion-at-point t)

(require 'dap-mode)
(require 'dap-ui)
(require 'dap-ui-repl)
(dap-mode 1)
(dap-ui-mode 1)

(provide 'init-lsp)
