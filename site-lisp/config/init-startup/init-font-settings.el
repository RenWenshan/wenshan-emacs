;; might need to adjust this in your .emacs
(set-face-attribute
 'default nil
 :font (font-spec :name "-unknown-DejaVu Sans Mono-bold-normal-normal-*-*-*-*-*-m-0-iso10646-1"
                  :weight 'normal
                  :slant 'normal
                  :size 12.5))

(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font
   (frame-parameter nil 'font)
   charset
   (font-spec :name "-unknown-WenQuanYi Micro Hei Mono-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1"
              :weight 'normal
              :slant 'normal
              :size 15.0)))

(provide 'init-font-settings)
