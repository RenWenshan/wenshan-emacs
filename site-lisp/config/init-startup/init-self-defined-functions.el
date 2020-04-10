(defun wenshan-join-line-from-next-line ()
  "Join line from next line."
  (interactive)
  (join-line -1))

(defun wenshan-switch-to-minibuffer-window ()
  "Switch to minibuffer window (if active)"
  (interactive)
  (when (active-minibuffer-window)
    (select-window (active-minibuffer-window))))

(defun wenshan-previous-blank-line ()
  "Moves to the previous line containing nothing but whitespace."
  (interactive)
  (search-backward-regexp "^[ \t]*\n"))

(defun wenshan-next-blank-line ()
  "Moves to the next line containing nothing but whitespace."
  (interactive)
  (forward-line)
  (search-forward-regexp "^[ \t]*\n")
  (forward-line -1))

(defun wenshan-delete-current-file ()
  (interactive)
  (let ((filename (buffer-file-name)))
    (delete-file filename)
    (kill-current-buffer)))

(provide 'init-self-defined-functions)
