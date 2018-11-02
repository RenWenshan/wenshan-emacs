(require 'init-modify-emacs-defaults)
(require 'cache-path-from-shell)	; get environment variables such as $PATH from the shell
(require 'init-auto-save)
(require 'init-cursor-moving)
(require 'init-buffer-and-window-switching)
(require 'init-helm)
(require 'init-undo-and-redo)
(require 'init-font-settings)
(require 'init-self-defined-functions)

(server-start)				; start emacs server for fast emacsclient startup

(provide 'init-startup)
