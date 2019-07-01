(defun wenshan-join-line-from-next-line ()
  "Join line from next line."
  (interactive)
  (join-line -1))

(defun wenshan-switch-to-minibuffer-window ()
  "switch to minibuffer window (if active)"
  (interactive)
  (when (active-minibuffer-window)
    (select-window (active-minibuffer-window))))

(provide 'init-self-defined-functions)
