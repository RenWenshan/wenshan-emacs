;; ace-jump
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

;; vi style navigation for read-only modes
(require 'vi-navigate)
(vi-navigate-load-keys)

(require 'multiple-cursors)

(require 'drag-stuff)
(drag-stuff-global-mode t)

(require 'disable-mouse)
(disable-mouse-global-mode t)

(provide 'init-cursor-moving)
