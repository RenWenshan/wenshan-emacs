(use-package ivy
  :bind (
         ("C-s" . 'swiper-isearch)
         ("M-x" . 'counsel-M-x)
         ("C-x C-f" . 'counsel-find-file)
         ("M-y" . 'counsel-yank-pop)
         ("C-h f" . 'counsel-describe-function)
         ("C-h v" . 'counsel-describe-variable)
         ("C-h l" . 'counsel-find-library)
         ("C-h i" . 'counsel-info-lookup-symbol)
         ("C-h u" . 'counsel-unicode-char)
         ("C-h j" . 'counsel-set-variable)
         ("C-x b" . 'ivy-switch-buffer)
         ("C-c v" . 'ivy-push-view)
         ("C-c V" . 'ivy-pop-view)
         ("C-c c" . 'counsel-compile)
         ("s-p" . 'counsel-git)
         ("C-c j" . 'counsel-git-grep)
         ("C-c L" . 'counsel-git-log)
         ("s-f" . 'counsel-rg)
         ("C-c m" . 'counsel-linux-app)
         ("C-c n" . 'counsel-fzf)
         ("C-x l" . 'counsel-locate)
         ("C-c J" . 'counsel-file-jump)
         ("C-c C-r" . 'ivy-resume)
         ("C-c b" . 'counsel-bookmark)
         ("C-c d" . 'counsel-descbinds)
         ("C-c o" . 'counsel-outline)
         )
  :config
  (require 'swiper)
  (require 'counsel)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")

  ;; 以拼音首字母进行搜索，借鉴自陈斌的配置，见 https://zhuanlan.zhihu.com/p/67307599
  (require 'pinyinlib)
  (defun re-builder-extended-pattern (str)
    "Build regex compatible with pinyin from STR."
    (let* ((len (length str)))
      (cond
       ;; do nothing
       ((<= (length str) 0))

       ;; If the first charater of input in ivy is ":",
       ;; remaining input is converted into Chinese pinyin regex.
       ((string= (substring str 0 1) ":")
        (setq str (pinyinlib-build-regexp-string (substring str 1 len) t)))
       )
      (ivy--regex-ignore-order str)))

  (setq ivy-re-builders-alist '((t . re-builder-extended-pattern)))
  )

(provide 'init-ivy)
