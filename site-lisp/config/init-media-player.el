(use-package emms
  :commands (hydra-media-player/body)
  :config
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

  (require 'emms-setup)
  (emms-standard)
  (emms-default-players))

(provide 'init-media-player)
