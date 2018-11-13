(global-set-key (kbd "C-^") 'join-line-from-next-line)

(global-set-key (kbd "C-<tab>") 'awesome-tab-forward-tab)	   ; ctrl-tab
(global-set-key (kbd "C-<iso-lefttab>") 'awesome-tab-backward-tab) ; ctrl-shift-tab

(global-set-key (kbd "s->") 'ace-jump-mode)
(global-set-key (kbd "s-<") 'ace-jump-mode-pop-mark)

(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "M-x") 'helm-M-x)

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

(global-set-key (kbd "<XF86AudioPlay>") 'emms-pause)
(global-set-key (kbd "<XF86AudioNext>") 'emms-next)
(global-set-key (kbd "<XF86AudioPrev>") 'emms-previous)

(global-set-key (kbd "s-p") 'helm-ls-git-ls)
(global-set-key (kbd "s-F") 'color-rg-search-project)

(define-key awesome-pair-mode-map (kbd "M-o") 'awesome-pair-backward-delete)
(define-key awesome-pair-mode-map (kbd "C-k") 'awesome-pair-kill)
(define-key awesome-pair-mode-map (kbd "M-\"") 'awesome-pair-wrap-double-quote)
(define-key awesome-pair-mode-map (kbd "M-[") 'awesome-pair-wrap-bracket)
(define-key awesome-pair-mode-map (kbd "M-{") 'awesome-pair-wrap-curly)
(define-key awesome-pair-mode-map (kbd "M-(") 'awesome-pair-wrap-round)
(define-key awesome-pair-mode-map (kbd "M-)") 'awesome-pair-unwrap)
(define-key awesome-pair-mode-map (kbd "M-n") 'awesome-pair-jump-right)
(define-key awesome-pair-mode-map (kbd "M-p") 'awesome-pair-jump-left)
(define-key awesome-pair-mode-map (kbd "M-:") 'awesome-pair-jump-out-pair-and-newline)

(global-set-key (kbd "M-j") 'pyim-convert-code-at-point)

(provide 'init-keybinding)
