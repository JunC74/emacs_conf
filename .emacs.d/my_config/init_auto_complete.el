(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/init/auto-complete/dict")
(ac-config-default)
;;ʹ����ǿ��popup�б�
(require 'pos-tip)
;;(setq ac-quick-help-prefer-pos-tip t)   ;default is t
;;ʹ��quick-help
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 1.0)
;;ʹ��fuzzy����(���������Ϣ��ʱ���Ծɲ���ģ��ƥ��ȥ��������Ĳ�ȫ�ؼ���)
(setq ac-fuzzy-enable t)
;;����tab����ʹ��ģʽ
(setq ac-dwim t)
(provide 'init_auto_complete)
