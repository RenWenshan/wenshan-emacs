(defun wenshan-join-line-from-next-line ()
  "Join line from next line."
  (interactive)
  (join-line -1))

(defun wenshan-switch-to-minibuffer-window ()
  "Switch to minibuffer window (if active)"
  (interactive)
  (when (active-minibuffer-window)
    (select-window (active-minibuffer-window))))

(defun wenshan-delete-current-file ()
  (interactive)
  (let ((filename (buffer-file-name)))
    (delete-file filename)
    (kill-current-buffer)))

(provide 'init-self-defined-functions)
