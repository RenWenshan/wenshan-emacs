(use-package awesome-pair
  :commands (awesome-pair-mode)
  :bind
  (:map awesome-pair-mode-map
        ("(" . awesome-pair-open-round)
        ("[" . awesome-pair-open-bracket)
        ("{" . awesome-pair-open-curly)
        (")" . awesome-pair-close-round)
        ("]" . awesome-pair-close-bracket)
        ("}" . awesome-pair-close-curly)
        ("=" . awesome-pair-equal)
        ("%" . awesome-pair-match-paren)
        ("\""    . awesome-pair-double-quote)
        ("M-o"   . awesome-pair-backward-delete)
        ("C-d"   . awesome-pair-forward-delete)
        ("C-k"   . awesome-pair-kill)
        ("M-\""  . awesome-pair-wrap-double-quote)
        ("M-["   . awesome-pair-wrap-bracket)
        ("M-{"   . awesome-pair-wrap-curly)
        ("M-("   . awesome-pair-wrap-round)
        ("M-)"   . awesome-pair-unwrap)
        ("C-M-n" . awesome-pair-jump-right)
        ("C-M-p" . awesome-pair-jump-left)
        ("C-M-:" . awesome-pair-jump-out-pair-and-newline)
        )
  )

(dolist (hook (list
                 'c-mode-common-hook
                 'c-mode-hook
                 'c++-mode-hook
                 'java-mode-hook
                 'haskell-mode-hook
                 'emacs-lisp-mode-hook
                 'lisp-interaction-mode-hook
                 'lisp-mode-hook
                 'maxima-mode-hook
                 'ielm-mode-hook
                 'sh-mode-hook
                 'makefile-gmake-mode-hook
                 'php-mode-hook
                 'python-mode-hook
                 'js-mode-hook
                 'go-mode-hook
                 'qml-mode-hook
                 'jade-mode-hook
                 'css-mode-hook
                 'ruby-mode-hook
                 'coffee-mode-hook
                 'rust-mode-hook
                 'qmake-mode-hook
                 'lua-mode-hook
                 'swift-mode-hook
                 'minibuffer-inactive-mode-hook
                 ))
    (add-hook hook '(lambda () (awesome-pair-mode t))))

(provide 'init-parenthesis-completion)
