(require 'paredit)

(defun wenshan-paredit-space-for-delimiter-p (endp delm)
  (not (derived-mode-p 'python-mode)))

;; no extra space for delimiters in some modes
(add-to-list 'paredit-space-for-delimiter-predicates 'wenshan-paredit-space-for-delimiter-p)

;; enable paredit for all programming modes
(add-hook 'prog-mode-hook
	  '(lambda()
	     (progn
	       (paredit-mode t)
	       )))

(provide 'init-paredit)
