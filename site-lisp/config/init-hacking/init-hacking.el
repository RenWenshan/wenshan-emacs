(require 'paredit)
(require 'flycheck)

(add-hook 'prog-mode-hook
	  '(lambda()
	     (progn
	       (paredit-mode t)
	       (flycheck-mode t)
	       )))

(require 'init-python)

(provide 'init-hacking)
