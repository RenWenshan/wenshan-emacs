(tool-bar-mode -1)			; hide tool bar for more space
(menu-bar-mode -1)			; hide menu bar for more space
(scroll-bar-mode -1)			; hide scroll bar for more space
(blink-cursor-mode -1)			; stop cursor from blinking
(fset 'yes-or-no-p 'y-or-n-p)		; "y or n" instead of "yes or no"
(setq ring-bell-function 'ignore)	; prevent beep
(setq epa-pinentry-mode 'loopback)	; type epa password inside emacs
(setq-default fill-column 120)		; line width 120

(provide 'init-modify-emacs-defaults)
