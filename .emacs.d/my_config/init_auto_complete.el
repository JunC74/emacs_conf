(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/init/auto-complete/dict")
(ac-config-default)
;;使用增强的popup列表
(require 'pos-tip)
;;(setq ac-quick-help-prefer-pos-tip t)   ;default is t
;;使用quick-help
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 1.0)
;;使用fuzzy功能(输入错误信息的时候，仍旧采用模糊匹配去给出合理的补全关键字)
(setq ac-fuzzy-enable t)
;;设置tab键的使用模式
(setq ac-dwim t)
(provide 'init_auto_complete)
