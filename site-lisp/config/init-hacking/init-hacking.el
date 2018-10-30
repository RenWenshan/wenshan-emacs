(require 'paredit)

(add-hook 'prog-mode-hook '(lambda() (paredit-mode 1)))

(require 'init-python)

(provide 'init-hacking)
