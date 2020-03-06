(use-package pyim
  :bind ("M-j" . pyim-convert-code-at-point)

  :config
  (require 'posframe)
  (require 'pyim-basedict)

  (pyim-basedict-enable)
  (setq default-input-method "pyim")
  (setq pyim-default-scheme 'microsoft-shuangpin) ; 微软双拼方案
  (pyim-isearch-mode 1)                           ; 开启拼音搜索功能
  (setq pyim-page-tooltip 'posframe)              ; 用 posframe 替代 popup, 速度很快并且菜单不会变形
  (setq pyim-page-length 9)                       ; 选词框显示9个候选词
  (setq pyim-fuzzy-pinyin-alist nil)              ; 不使用模糊拼音
  )

(provide 'init-pyim)
