(setq gc-cons-threshold most-positive-fixnum) ; avoid GC during startup to save time

(defvar wenshan-emacs-config-dir (concat wenshan-emacs-root-dir "/config"))
(defvar wenshan-emacs-extension-dir (concat wenshan-emacs-root-dir "/extensions"))
(defvar wenshan-emacs-data-dir (concat wenshan-emacs-root-dir "/data"))

(require 'use-package)

(use-package hydra)
(use-package init-startup)
(use-package init-shell)
(use-package init-version-control)
(use-package init-project-interaction)
(use-package init-media-player)
(use-package init-hacking)
(use-package init-keybinding)
(use-package init-zh-cn)
(use-package init-misc)

(setq gc-cons-threshold 4000000)        ; set gc threshold back to a normal number

(provide 'init)
