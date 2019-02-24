(require 'clojure-mode)
(setq clojure-align-forms-automatically t)
(add-hook 'clojure-mode-hook (lambda () (awesome-pair-mode 1)))

(require 'cider)

(provide 'init-clojure)
