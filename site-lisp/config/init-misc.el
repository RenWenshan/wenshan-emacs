;;; flashcards: add items to anki
(require 'anki-editor)

;;; nov.el for epub ebooks reading
(require 'nov)
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))

(provide 'init-misc)
