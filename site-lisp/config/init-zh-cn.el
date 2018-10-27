(require 'posframe)
(require 'pyim)

(defun pyim-enable-bigdict ()
  "Add bigdict to pyim."
  (interactive)
  (let ((file (concat (file-name-as-directory wenshan-emacs-data-dir)
		      "pyim-bigdict.pyim.gz")))
    (when (file-exists-p file)
      (if (featurep 'pyim)
          (pyim-extra-dicts-add-dict
           `(:name "Bigdict-elpa"
                   :file ,file
                   :coding utf-8-unix
                   :dict-type pinyin-dict
                   :elpa t))
        (message "pyim 没有安装，pyim-bigdict 启用失败。")))))


(pyim-enable-bigdict)			; 加载 bigdict

(setq default-input-method "pyim")
(setq pyim-default-scheme 'microsoft-shuangpin) ; 微软双拼方案

;; 设置 pyim 探针设置，这是 pyim 高级功能设置，可以实现 *无痛* 中英文切换
;; 1. 光标只有在注释里面时，才可以输入中文
;; 2. 光标前是汉字字符时，才能输入中文
(setq-default pyim-english-input-switch-functions
	      '(pyim-probe-dynamic-english
		pyim-probe-isearch-mode
		pyim-probe-program-mode
		pyim-probe-org-structure-template))

(setq-default pyim-punctuation-half-width-functions
	      '(pyim-probe-punctuation-line-beginning
		pyim-probe-punctuation-after-punctuation))

;; 开启拼音搜索功能
(pyim-isearch-mode 1)

;; 默认使用 pupup-el 来绘制选词框，改用 'posframe, 速度很快并且菜单不会变形
(setq pyim-page-tooltip 'posframe)

;; 选词框显示9个候选词
(setq pyim-page-length 9)

;; 让 Emacs 启动时自动加载 pyim
(add-hook 'emacs-startup-hook
	  #'(lambda () (pyim-restart-1 t)))

;; 探针函数: 强制将光标前的拼音字符串转换为中文
(global-set-key (kbd "M-j") 'pyim-convert-code-at-point) 

(provide 'init-zh-cn)
