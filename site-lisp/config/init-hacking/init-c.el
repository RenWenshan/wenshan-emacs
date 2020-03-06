;; fix indentation https://stackoverflow.com/posts/26051450/revisions
(defun fix-c-indent-offset-according-to-syntax-context (key val)
  (setq c-offsets-alist (delq (assoc key c-offsets-alist) c-offsets-alist))
  (add-to-list 'c-offsets-alist '(key . val)))

(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode)
              (fix-c-indent-offset-according-to-syntax-context 'substatement-open 0))
            ))

(provide 'init-c)
