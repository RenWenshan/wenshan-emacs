(require 'lsp-java)
(require 'cc-mode)
(require 'treemacs)

(setq lsp-eldoc-render-all nil)
(setq lsp-highlight-symbol-at-point nil)
(setq company-lsp-cache-candidates t)
(setq company-lsp-async t)
(setq lsp-ui-sideline-update-mode 'point)

(add-hook 'java-mode-hook
	  (lambda ()
	    (setq-local company-backends (list 'company-lsp))))
(add-hook 'java-mode-hook 'lsp-java-enable)
(add-hook 'java-mode-hook 'flycheck-mode)
(add-hook 'java-mode-hook 'company-mode)
(add-hook 'java-mode-hook 'lsp-ui-mode)

(provide 'init-java)
