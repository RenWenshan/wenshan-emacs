(defun wenshan-join-line-from-next-line ()
  "Join line from next line."
  (interactive)
  (join-line -1))

(defun wenshan-copy-github-url-of-buffer-file (file &optional begin end use-default-branch)
  "Copy the github link of FILE highlighting lines BEGIN to END.

FILE is a path to relative to the root of the Git repository.

If FILE and BEGIN/END are not provided, they are detected from
the current context:

  1. In a file-visiting buffer, the buffer's file context and
     active region are used.

  2. In a dired- or magit-like buffer, the file at point is used.

If USE-DEFAULT-BRANCH is set (interactively, via prefix
argument), then copy the link of FILE at the default branch of the
repository instead of the current HEAD."
  (interactive (list nil nil nil current-prefix-arg))
  (let* ((args (magithub-browse-file--get-file-and-region file begin end))
         (file (plist-get args :file))
         (begin (plist-get args :begin))
         (end (plist-get args :end)))
    (unless file
      (user-error "Could not detect a file at point"))

    (let-alist (magithub-repo)
      (let* ((default-directory (if (file-directory-p file)
                                    file
                                  (file-name-directory file)))
             (git-rev (if use-default-branch
                          .default_branch
                        (magit-git-string "rev-parse" "HEAD")))
             (anchor (magithub-browse-file--get-anchor begin end)))
        (unless (magithub-github-repository-p)
          (user-error "Not a GitHub repository"))
        (setq file (string-remove-prefix (magit-toplevel) file))
        (kill-new
         (if (string-empty-p file)
             (format "%s/tree/%s" .html_url git-rev)
           (format "%s/blob/%s/%s%s" .html_url git-rev file (or anchor ""))))))))

(provide 'init-self-defined-functions)
