(use-package init-parenthesis-completion)
(use-package init-template-system)
(use-package init-lsp)

(use-package flycheck
  :commands (flycheck-mode)
  :config
  (require 'pkg-info))
(use-package init-code-folding)
(use-package init-code-sending)
(use-package init-indentation-highlight)
(use-package init-line-numbering)

(use-package init-python)
(use-package init-javascript)
(use-package init-c)

(provide 'init-hacking)
