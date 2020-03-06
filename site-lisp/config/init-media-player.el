(add-to-list 'load-path (concat wenshan-emacs-extension-dir "/emms/lisp"))

(use-package emms
  :demand t
  :commands (hydra-media-player/body)
  :init
  (defhydra hydra-media-player ()
    "emms"
    ("p" emms-pause               "pause/resume")
    ("l" emms-play-playlist       "playlist")
    ("f" emms-play-file           "song")
    ("d" emms-play-directory-tree "directory")
    (">" emms-next                "next")
    ("<" emms-previous            "previous")
    ("s" emms-stop                "stop")
    ("q" nil                      "quit"))

  :config
  (require 'emms-setup)
  (emms-all)
  (emms-default-players)
  )

(provide 'init-media-player)
