(setq auto-save-default nil)		; disable emacs built in auto-save
(setq make-backup-files nil)		; no need for backups with auto-save

(require 'auto-save)
(setq auto-save-idle 1)			; save if Emacs is idle for 1 second
(setq auto-save-silent t)
(setq auto-save-delete-trailing-whitespace t) ; delete trailing spaces except for the current line
(auto-save-enable)

(provide 'init-auto-save)
