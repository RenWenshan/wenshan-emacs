(require 'lsp-mode)

(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(require 'lsp-imenu)
(add-hook 'lsp-after-open-hook 'lsp-enable-imenu)

(require 'company-lsp)
(push 'company-lsp company-backends)

(require 'dap-mode)
(require 'dap-ui)
(require 'dap-ui-repl)
(dap-mode 1)
(dap-ui-mode 1)

(provide 'init-lsp)
