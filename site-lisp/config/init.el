(defvar wenshan-emacs-config-dir (concat wenshan-emacs-root-dir "/config"))
(defvar wenshan-emacs-extension-dir (concat wenshan-emacs-root-dir "/extensions"))
(defvar wenshan-emacs-data-dir (concat wenshan-emacs-root-dir "/data"))

(with-temp-message ""	       ; remove output from loading extensions
  (require 'init-startup)      ; general configurations
  (require 'init-magit)	       ; git
  (require 'init-emms)	       ; media player
  (require 'init-projectile)   ; project interaction
  (require 'init-paredit)      ; s-expression editing
  (require 'init-zh-input-method)
  )

(provide 'init)
