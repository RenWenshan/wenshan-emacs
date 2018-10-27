(defvar wenshan-emacs-config-dir (concat wenshan-emacs-root-dir "/config"))
(defvar wenshan-emacs-extension-dir (concat wenshan-emacs-root-dir "/extensions"))
(defvar wenshan-emacs-data-dir (concat wenshan-emacs-root-dir "/data"))

(with-temp-message ""		; avoid output from loading extensions
  (require 'init-startup)
  (require 'init-version-control)
  (require 'init-media-player)
  (require 'init-project-interaction)
  (require 'init-hacking)
  (require 'init-zh-cn))


(provide 'init)
