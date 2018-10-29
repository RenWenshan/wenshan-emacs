(global-set-key (kbd "C-^") 'join-line)

(global-set-key (kbd "C-<tab>") 'awesome-tab-forward-tab)    ; ctrl-tab
(global-set-key (kbd "C-S-<tab>") 'awesome-tab-backward-tab) ; ctrl-shift-tab

(global-set-key (kbd "C-c g") 'magit-status)

(global-set-key (kbd "<XF86AudioPlay>") 'emms-pause)
(global-set-key (kbd "<XF86AudioNext>") 'emms-next)
(global-set-key (kbd "<XF86AudioPrev>") 'emms-previous)

(global-set-key (kbd "s-p") 'projectile-find-file)
(global-set-key (kbd "s-F") 'color-rg-search-project)

(global-set-key (kbd "M-j") 'pyim-convert-code-at-point)

(provide 'init-keybinding)
