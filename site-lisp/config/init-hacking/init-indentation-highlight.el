(use-package highlight-indent-guides
  :commands (highlight-indent-guides-mode)
  :hook ((prog-mode . highlight-indent-guides-mode))
  :config
  (setq highlight-indent-guides-method 'character)
  )

(provide 'init-indentation-highlight)
