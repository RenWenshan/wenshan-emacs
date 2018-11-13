(server-start)				; start emacs server for fast emacsclient startup

;; edit browser text areas with Emacs, see https://github.com/alpha22jp/atomic-chrome
(require 'atomic-chrome)
(atomic-chrome-start-server)

(provide 'init-emacs-server)
