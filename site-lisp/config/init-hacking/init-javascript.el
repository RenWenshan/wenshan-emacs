(setq js-indent-level 2)

(add-hook 'js-mode-hook
          (lambda ()
            (use-package mocha-snippets
              :config
              (setq mocha-snippets-use-fat-arrows t)
              (setq mocha-snippets-add-space-after-function-keyword t)
              )
            ))

(provide 'init-javascript)
