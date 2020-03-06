(server-start)				; start emacs server for fast emacsclient startup

;; edit browser text areas with Emacs, see https://github.com/alpha22jp/atomic-chrome
(use-package atomic-chrome
  :config
  (atomic-chrome-start-server)
  )

(provide 'init-emacs-server)
