(add-to-list 'load-path (concat wenshan-emacs-extension-dir "/emms/lisp"))

(require 'emms-setup)

(emms-all)

(emms-default-players)

(provide 'init-media-player)
