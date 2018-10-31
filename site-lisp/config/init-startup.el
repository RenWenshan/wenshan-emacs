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

;; auto-save settings, it does smart trailing space removal.
(setq auto-save-default nil)
(setq make-backup-files nil)		; no need for backups since auto-saving

(require 'auto-save)
(setq auto-save-idle 3)			; save if Emacs is idle for 3s
(setq auto-save-silent t)
(setq auto-save-delete-trailing-whitespace t)
(auto-save-enable)

;; easier window switching
(require 'window-numbering)
(window-numbering-mode t)

(setq epa-pinentry-mode 'loopback)	; type epa password inside emacs

(setq-default fill-column 120)		; line width 120

;; easier buffer switching
(require 'awesome-tab)
(awesome-tab-mode t)

;; font settings
(set-face-attribute
 'default nil
 :font (font-spec :name "-unknown-DejaVu Sans Mono-bold-normal-normal-*-*-*-*-*-m-0-iso10646-1"
                  :weight 'normal
                  :slant 'normal
                  :size 12.5))

(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font
   (frame-parameter nil 'font)
   charset
   (font-spec :name "-unknown-WenQuanYi Micro Hei Mono-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1"
              :weight 'normal
              :slant 'normal
              :size 15.0)))

;; prevent beep
(setq ring-bell-function 'ignore)

;; ace jump
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)

(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back"
  t)

(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))

;; helm
(require 'helm)
(require 'helm-files)
(require 'helm-buffers)
(require 'helm-ls-git)
(require 'helm-command)

;; vi style navigation for read-only buffers
(require 'vi-navigate)
(vi-navigate-load-keys)

(require 'pkg-info)
;; self defined commands
(defun join-line-from-next-line ()
  "Join line from next line."
  (interactive)
  (join-line -1))

;; start emacs server for fast emacsclient startup
(server-start)

(provide 'init-startup)
