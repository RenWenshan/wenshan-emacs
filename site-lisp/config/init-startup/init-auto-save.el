(setq auto-save-default nil)		; disable emacs built in auto-save
(setq make-backup-files nil)		; no need for backups with auto-save

(require 'auto-save)
(setq auto-save-idle 3)			; save if Emacs is idle for 3s
(setq auto-save-silent t)
(setq auto-save-delete-trailing-whitespace t) ; delete trailing spaces except for the current line
(auto-save-enable)

(provide 'init-auto-save)
