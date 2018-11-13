(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode)) ; for shell scripts running via node.js
(setq js2-basic-offset 2)

(provide 'init-javascript)
