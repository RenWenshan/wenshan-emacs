;; hide toolbar, menu-bar and scroll bar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; get environment variables such as $PATH from the shell
(require 'cache-path-from-shell)

;; string manipulation functions
(require 's)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; delete trailing whitespace on saving
(add-hook 'before-save-hook
          (lambda ()
            (delete-trailing-whitespace)))

;; use super-save instead of built-in auto-save
(setq auto-save-default nil)
(setq make-backup-files nil)		; no need for backups since auto-saving

(require 'super-save)
(super-save-mode +1)
(setq super-save-auto-save-when-idle t)

;; easier window switching
(require 'window-numbering)
(window-numbering-mode t)

(setq epa-pinentry-mode 'loopback)	; type epa password inside emacs

(setq-default fill-column 120)		; line width 120

;; font settings
(set-frame-font "Dejavu Sans Mono-11" nil t)
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font
   (frame-parameter nil 'font) charset (font-spec :family "WenQuanYi Micro Hei Mono" :size 18)))

(add-to-list 'default-frame-alist	; for new frames
             '(font . "Dejavu Sans Mono-11")
             '(dolist (charset '(kana han symbol cjk-misc bopomofo))
                (set-fontset-font
                 (frame-parameter nil 'font)
                 charset
		 (font-spec :family "WenQuanYi Micro Hei Mono" :size 18))))

;; start emacs server for fast emacsclient startup
(server-start)

(provide 'init-startup)
