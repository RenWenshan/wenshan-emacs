(defvar wenshan-emacs-config-dir (concat wenshan-emacs-root-dir "/config"))
(defvar wenshan-emacs-extension-dir (concat wenshan-emacs-root-dir "/extensions"))

(with-temp-message ""	       ; remove output from loading extensions
  (require 'init-startup)      ; general configurations
  (require 'init-magit)	       ; git
  (require 'init-emms)	       ; media player
  (require 'init-projectile)   ; project interaction
  )

(provide 'init)
