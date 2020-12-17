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
(use-package vi-navigate
  :config
  (setq vi-navigate-key-alist (cons '("/" . ace-jump-mode) vi-navigate-key-alist))
  (vi-navigate-load-keys)
  )

(use-package multiple-cursors
  :bind (("C-S-c C-S-c" . mc/edit-lines)
         ("C->"         . mc/mark-next-like-this)
         ("C-<"         . mc/mark-previous-like-this)
         ("C-c C-<"     . mc/mark-all-like-this)
         ("C-c C->"     . mc/skip-to-next-like-this)
         )
  )

(use-package drag-stuff
  :bind (("C-<up>"   . drag-stuff-up)
         ("C-<down>" . drag-stuff-down)
         ("C-<left>" . drag-stuff-left)
         ("C-<right>" . drag-stuff-left)
         )
  )

(use-package smart-shift
  :bind (("C-S-<left>" . smart-shift-left)
         ("C-S-<right>" . smart-shift-right)))

(use-package disable-mouse
  :config
  (disable-mouse-global-mode t)
  )

(provide 'init-cursor-moving)
