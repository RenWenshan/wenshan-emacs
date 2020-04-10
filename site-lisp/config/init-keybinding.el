(add-hook 'dired-mode-hook
          (lambda ()
            (progn
              (define-key dired-mode-map "e" (lambda () (interactive) (eww-open-file (dired-get-file-for-visit)))))))

(global-set-key (kbd "s-+") 'text-scale-increase)
(global-set-key (kbd "s--") 'text-scale-decrease)
(global-set-key (kbd "s-=") 'text-scale-set)
(global-set-key (kbd "s-k") '(lambda () (interactive) (kill-buffer (current-buffer))))
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "s->") 'ace-jump-mode)
(global-set-key (kbd "s-<") 'ace-jump-mode-pop-mark)
(global-set-key (kbd "s-u") 'revert-buffer)
(global-set-key (kbd "s-t") 'view-mode)
(global-set-key (kbd "C-c C-d") "\C-a\C- \C-n\M-w\C-y")

(add-hook 'view-mode-hook
	  (lambda ()
	    (progn
	      (define-key view-mode-map (kbd "e") 'View-scroll-page-backward)
	      (define-key view-mode-map (kbd "j") 'View-scroll-line-forward)
	      (define-key view-mode-map (kbd "k") 'View-scroll-line-backward)
	      (define-key view-mode-map (kbd "/") 'ace-jump-mode)
              )))

(defhydra hydra-wenshan-emacs ()
  "Hydra"
  ("m" hydra-media-player/body "media player" :exit t)
  ("p" hydra-projectile/body "project interaction" :exit t)
  ("s" aweshell-new "eshell" :exit t)
  ("t" toggle-truncate-lines "truncate lines" :exit t)
  ("q" nil "quit"))

(global-set-key (kbd "s-c") 'hydra-wenshan-emacs/body)

(add-hook 'js-mode-hook
          (lambda()
            (define-key js-mode-map (kbd "M-.") 'xref-find-definitions)
            ))

(provide 'init-keybinding)
