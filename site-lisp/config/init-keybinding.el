(require 'hydra)

(add-hook 'dired-mode-hook
          (lambda ()
            (progn
              (define-key dired-mode-map "e" (lambda () (interactive) (eww-open-file (dired-get-file-for-visit)))))))

(global-set-key (kbd "s-+") 'text-scale-increase)
(global-set-key (kbd "s--") 'text-scale-decrease)
(global-set-key (kbd "s-=") 'text-scale-set)

(global-set-key (kbd "s-k") '(lambda () (interactive) (kill-buffer (current-buffer))))
(global-set-key (kbd "s-:") 'wenshan-switch-to-minibuffer-window)

(global-set-key (kbd "C-^") 'wenshan-join-line-from-next-line)
(global-set-key (kbd "M-p") 'wenshan-previous-blank-line)
(global-set-key (kbd "M-n") 'wenshan-next-blank-line)
(global-set-key (kbd "M-g") 'goto-line)

(global-set-key (kbd "s->") 'ace-jump-mode)
(global-set-key (kbd "s-<") 'ace-jump-mode-pop-mark)

(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-c C-j") 'helm-imenu)

(global-set-key (kbd "s-u") 'revert-buffer)

(global-set-key (kbd "s-t") 'view-mode)
(add-hook 'view-mode-hook
	  (lambda ()
	    (progn
	      (define-key view-mode-map (kbd "e") 'View-scroll-page-backward)
	      (define-key view-mode-map (kbd "j") 'View-scroll-line-forward)
	      (define-key view-mode-map (kbd "k") 'View-scroll-line-backward)
	      (define-key view-mode-map (kbd "/") 'ace-jump-mode)
	      (define-key view-mode-map (kbd "y") 'sdcv-search-pointer+))))

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c C->") 'mc/skip-to-next-like-this)

(global-set-key (kbd "C-<up>") 'drag-stuff-up)
(global-set-key (kbd "C-<down>") 'drag-stuff-down)

(global-set-key (kbd "C-c g") 'magit-status)

(global-set-key (kbd "s-p") 'helm-ls-git-ls)
(global-set-key (kbd "s-M-f") 'color-rg-search-project)
(global-set-key (kbd "s-F") 'helm-projectile-rg)

(defhydra hydra-media-player ()
  "emms"
  ("p" emms-pause               "pause/resume")
  ("l" emms-play-playlist       "playlist")
  ("f" emms-play-file           "song")
  ("d" emms-play-directory-tree "directory")
  (">" emms-next                "next")
  ("<" emms-previous            "previous")
  ("s" emms-stop                "stop")
  ("q" nil                      "quit"))

(defhydra hydra-projectile ()
  "
projectile: %(projectile-project-root)

     Find File            Search/Tags          Buffers                Cache
------------------------------------------------------------------------------------------
  _f_: file            _a_: ag                _i_: Ibuffer           _c_: cache clear
  _r_: recent file     _g_: update gtags      _b_: switch to buffer  _x_: remove known project
  _d_: dir             _m_: multi-occur       _k_: Kill all buffers  _X_: cleanup non-existing
  _p_: switch project  ^^                     ^^                     _+_: add known project
"
  ("a"   projectile-ag)
  ("b"   projectile-switch-to-buffer)
  ("c"   projectile-invalidate-cache)
  ("d"   projectile-find-dir)
  ("f"   projectile-find-file)
  ("g"   ggtags-update-tags)
  ("i"   projectile-ibuffer)
  ("k"   projectile-kill-buffers)
  ("m"   projectile-multi-occur)
  ("p"   projectile-switch-project)
  ("r"   projectile-recentf)
  ("x"   projectile-remove-known-project)
  ("X"   projectile-cleanup-known-projects)
  ("+"   projectile-add-known-project)
  ("q"   nil "quit"))

(defhydra hydra-wenshan-emacs ()
  "Hydra"
  ("m" hydra-media-player/body "media player" :exit t)
  ("p" hydra-projectile/body "project interaction" :exit t)
  ("s" aweshell-new "eshell" :exit t)
  ("c" compile "compile" :exit t)
  ("r" recompile "re-compile" :exit t)
  ("q" nil "quit"))

(global-set-key (kbd "s-c") 'hydra-wenshan-emacs/body)

(define-key awesome-pair-mode-map (kbd "M-o") 'awesome-pair-backward-delete)
(define-key awesome-pair-mode-map (kbd "C-d") 'awesome-pair-forward-delete)
(define-key awesome-pair-mode-map (kbd "C-k") 'awesome-pair-kill)
(define-key awesome-pair-mode-map (kbd "M-\"") 'awesome-pair-wrap-double-quote)
(define-key awesome-pair-mode-map (kbd "M-[") 'awesome-pair-wrap-bracket)
(define-key awesome-pair-mode-map (kbd "M-{") 'awesome-pair-wrap-curly)
(define-key awesome-pair-mode-map (kbd "M-(") 'awesome-pair-wrap-round)
(define-key awesome-pair-mode-map (kbd "M-)") 'awesome-pair-unwrap)
(define-key awesome-pair-mode-map (kbd "C-M-n") 'awesome-pair-jump-right)
(define-key awesome-pair-mode-map (kbd "C-M-p") 'awesome-pair-jump-left)
(define-key awesome-pair-mode-map (kbd "C-M-:") 'awesome-pair-jump-out-pair-and-newline)

(add-hook 'python-mode-hook
          (lambda()
            (define-key python-mode-map (kbd "C-c C-j") 'helm-imenu)))

(add-hook 'js-mode-hook
          (lambda()
            (define-key js-mode-map (kbd "M-.") 'xref-find-definitions)
            (define-key js-mode-map (kbd "C-c C-j") 'helm-imenu)))

(global-set-key (kbd "M-j") 'pyim-convert-code-at-point)
(global-set-key (kbd "C-x C-y") 'sdcv-search-pointer+)

(provide 'init-keybinding)
