(setq python-indent-offset 2)

(add-hook 'python-mode-hook #'lsp)

(require 'dap-python)

(provide 'init-python)
