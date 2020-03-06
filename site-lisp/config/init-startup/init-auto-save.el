(setq auto-save-default nil)                             ; disable emacs built-in auto-save
(setq make-backup-files nil)                             ; disable backups
(add-hook 'before-save-hook 'delete-trailing-whitespace) ; delete trailing space before saving

(use-package super-save
  :config
  (setq super-save-remote-files nil)    ; disable super-save for remote files
  (super-save-mode t)
  )

(provide 'init-auto-save)
