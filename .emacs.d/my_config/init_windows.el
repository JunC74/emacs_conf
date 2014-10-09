;; 启动最大化
(run-with-idle-timer 1 nil 'w32-send-sys-command 61488)

;; Emacs只启动一个进程的方法
;; 首先，我们必须设置一个环境变量：
;; EMACS_SERVER_FILE=C:\.emacs.d\server\server
;;(setq server-use-tcp t)
(server-start)

;; 初始化cygwin环境
(require 'init_cygwin)
(provide 'init_windows)

