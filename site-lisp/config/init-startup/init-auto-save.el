(setq auto-save-default nil)		; disable emacs built-in auto-save
(setq make-backup-files nil)		; disable backups

(require 'super-save)                   ; save on switching buffers, losing focus, etc
(setq super-save-remote-files nil)      ; disable super-save for remote files
(super-save-mode t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'init-auto-save)
