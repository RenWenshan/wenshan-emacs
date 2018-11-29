(require 'hydra)

(global-set-key (kbd "C-^") 'wenshan-join-line-from-next-line)

(global-set-key (kbd "C-<tab>") 'awesome-tab-forward-tab)	   ; ctrl-tab
(global-set-key (kbd "C-<iso-lefttab>") 'awesome-tab-backward-tab) ; ctrl-shift-tab

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

(global-set-key (kbd "M-p") 'drag-stuff-up)
(global-set-key (kbd "M-n") 'drag-stuff-down)

(global-set-key (kbd "C-c g") 'magit-status)

(global-set-key (kbd "s-p") 'helm-ls-git-ls)
(global-set-key (kbd "s-F") 'color-rg-search-project)

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
  ("q" nil "quit"))

(global-set-key (kbd "s-c") 'hydra-wenshan-emacs/body)

(define-key awesome-pair-mode-map (kbd "M-o") 'awesome-pair-backward-delete)
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

(global-set-key (kbd "M-j") 'pyim-convert-code-at-point)

(provide 'init-keybinding)
