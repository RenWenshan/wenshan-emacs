(use-package sdcv
  :bind (("C-x C-y" . sdcv-search-pointer+)
         )

  :config
  (setq sdcv-say-word-p nil) 		; do not pronounce
  (setq sdcv-dictionary-simple-list
        '("懒虫简明英汉词典"
          "懒虫简明汉英词典"
          "KDic11万英汉词典"))
  (setq sdcv-dictionary-data-dir (concat wenshan-emacs-data-dir "/sdcv"))
  )

(provide 'init-sdcv)
