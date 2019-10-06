(set-language-environment "UTF-8")      ; set coding system
(tool-bar-mode -1)			; hide tool bar for more space
(menu-bar-mode 1)			; hide menu bar for more space
(scroll-bar-mode -1)			; hide scroll bar for more space
(show-paren-mode 1)                     ; highlight matching parenthesis
(setq scroll-step 3)                    ; smooth scroll
(global-hl-line-mode t)                 ; highlight current line globally
(blink-cursor-mode 1)			; stop cursor from blinking
(fset 'yes-or-no-p 'y-or-n-p)		; "y or n" instead of "yes or no"
(setq ring-bell-function 'ignore)	; prevent beep
(setq epa-pinentry-mode 'loopback)	; type epa password inside emacs
(setq-default fill-column 120)		; line width 120
(recentf-mode t)			; keep a list of recently opened files
(setq recentf-max-saved-items 65536)
(winner-mode t)				; record the changes in window configuration
(setq-default indent-tabs-mode nil)     ; no tabs for indentation
(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode)) ; use org-mode for txt files
(setq org-html-validation-link nil)
(delete-selection-mode 1)               ; overwrite text by yank

(provide 'init-modify-emacs-defaults)
