;; hide toolbar, menu-bar and scroll bar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; get environment variables such as $PATH from the shell
(require 'cache-path-from-shell)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; delete trailing whitespace on saving
(add-hook 'before-save-hook
          (lambda ()
            (delete-trailing-whitespace)))

;; use super-save instead of built-in auto-save
(setq auto-save-default nil)
(setq make-backup-files nil)   ; no need for backups since auto-saving

(require 'super-save)
(super-save-mode +1)
(setq super-save-auto-save-when-idle t)

;; start emacs server for fast emacsclient startup
(server-start)

(provide 'init-startup)
