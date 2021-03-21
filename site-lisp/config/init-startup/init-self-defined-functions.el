(defun wenshan-join-line-from-next-line ()
  "Join line from next line."
  (interactive)
  (join-line -1))

(defun wenshan-switch-to-minibuffer-window ()
  "Switch to minibuffer window (if active)"
  (interactive)
  (when (active-minibuffer-window)
    (select-window (active-minibuffer-window))))

(defun wenshan-toggle-fold-based-on-indentation ()
  "Toggle fold all lines larger than indentation on current line
Copied from https://stackoverflow.com/a/4459159/1074321"
  (interactive)
  (let ((col 1))
    (save-excursion
      (back-to-indentation)
      (setq col (+ 1 (current-column)))
      (set-selective-display
       (if selective-display nil (or col 1))))))

(provide 'init-self-defined-functions)
