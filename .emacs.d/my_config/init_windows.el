;; �������
(run-with-idle-timer 1 nil 'w32-send-sys-command 61488)

;; Emacsֻ����һ�����̵ķ���
;; ���ȣ����Ǳ�������һ������������
;; EMACS_SERVER_FILE=C:\.emacs.d\server\server
;;(setq server-use-tcp t)
(server-start)

;; windows cygwin ·������
(setenv "PATH" (concat "C:/cygwin64/bin;" (getenv "PATH")))
(setenv "PATH" (concat "z:/soft/emacs-24.3/global/bin;" (getenv "PATH")))

(setq exec-path (append exec-path '("z:/soft/emacs-24.3/global/bin")))
;; ��ʼ��cygwin����
(require 'init_cygwin)
;;(require 'init_project)
(provide 'init_windows)

