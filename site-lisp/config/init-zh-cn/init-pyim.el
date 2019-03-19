(require 'posframe)
(require 'pyim)
(require 'pyim-basedict)

(pyim-basedict-enable)
(setq default-input-method "pyim")
(setq pyim-default-scheme 'microsoft-shuangpin) ; 微软双拼方案
(pyim-isearch-mode 1)                           ; 开启拼音搜索功能
(setq pyim-page-tooltip 'posframe)      ; 默认使用 pupup-el 来绘制选词框，改用 'posframe, 速度很快并且菜单不会变形
(setq pyim-page-length 9)               ; 选词框显示9个候选词
(add-hook 'emacs-startup-hook #'(lambda () (pyim-restart-1 t))) ; 让 Emacs 启动时自动加载 pyim

(provide 'init-pyim)
