;;定制C/C++缩进风格
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-style "k&r")))
(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-style "stroustrup")))

;; 设置缩进字符数
(setq c-basic-offset 4)

(provide 'init_c_mod)