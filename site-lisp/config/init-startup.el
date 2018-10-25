;; hide toolbar, menu-bar and scroll bar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; get environment variables such as $PATH from the shell
(require 'cache-path-from-shell)

;; start emacs server for fast emacsclient startup
(server-start)

(provide 'init-startup)
