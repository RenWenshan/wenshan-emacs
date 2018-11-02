(require 'paredit)
(require 'pkg-info)			; required for flycheck
(require 'flycheck)

(add-hook 'prog-mode-hook
	  '(lambda()
	     (progn
	       (paredit-mode t)
	       )))

(require 'init-python)

(provide 'init-hacking)
