(setq js-indent-level 2)
(require 'flow-minor-mode)
(add-hook 'js-mode-hook 'flow-minor-enable-automatically)
(add-hook 'js-mode-hook #'lsp)

(require 'mocha-snippets)
(setq mocha-snippets-use-fat-arrows t)
(setq mocha-snippets-add-space-after-function-keyword t)

(provide 'init-javascript)
