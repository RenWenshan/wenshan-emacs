(require 'paredit)

(add-hook 'prog-mode-hook '(lambda() (paredit-mode 1)))

(provide 'init-paredit)
