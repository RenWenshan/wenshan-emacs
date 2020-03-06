(use-package projectile
  :demand t
  :commands (hydra-projectile/body)
  :init
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

  :config
  (projectile-mode t)
  )

(use-package color-rg
  :bind ("s-M-f" . 'color-rg-search-project))

(provide 'init-project-interaction)
