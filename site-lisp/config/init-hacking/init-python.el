(setq python-indent-offset 2)

;; requires `python-language-server': sudo pip install "python-language-server[all]"
(require 'lsp-python)
(add-hook 'python-mode-hook 'lsp-python-enable)

(provide 'init-python)
