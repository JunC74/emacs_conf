;; �������
(run-with-idle-timer 1 nil 'w32-send-sys-command 61488)

;; Emacsֻ����һ�����̵ķ���
;; ���ȣ����Ǳ�������һ������������
;; EMACS_SERVER_FILE=C:\.emacs.d\server\server
;;(setq server-use-tcp t)
(server-start)

;; ��ʼ��cygwin����
(require 'init_cygwin)
(provide 'init_windows)

