
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(defun my-c-mode-hook ()
  "C/C++ mode Config"
  (setq c-basic-offset 4))          ;; �����������
;; indent-tabs-mode t        ;; ��ֹ�ո��滻Tab
;; default-tab-width 4))     ;; Ĭ��Tab���

;; (add-hook 'c-mode-hook 'my-c-mode-hook)
;; (add-hook 'c++-mode-hook 'my-c-mode-hook)

;; cscope
;; http://lifegoo.pluskid.org/wiki/EmacsCscope.html#sec2
;; C-c s a �趨��ʼ����Ŀ¼��һ���������ĸ�Ŀ¼
;; C-s s I ��Ŀ¼�е�����ļ������б���������
;; C-c s s ���ҷ���
;; C-c s g Ѱ��ȫ�ֵĶ���
;; C-c s c ����ָ����������Щ����������
;; C-c s C ����ָ��������������Щ����
;; C-c s e Ѱ��������ʽ
;; C-c s f Ѱ���ļ�
;; C-c s i ����ָ�����ļ�����Щ�ļ�include
(provide 'init_c_mod)
