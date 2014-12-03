;; 启动最大化
(run-with-idle-timer 1 nil 'w32-send-sys-command 61488)

;; Emacs只启动一个进程的方法
;; 首先，我们必须设置一个环境变量：
;; EMACS_SERVER_FILE=C:\.emacs.d\server\server
;;(setq server-use-tcp t)
(server-start)

;; windows cygwin 路径设置
(setenv "PATH" (concat "C:/cygwin64/bin;" (getenv "PATH")))
(setenv "PATH" (concat "z:/soft/emacs-24.3/global/bin;" (getenv "PATH")))

(setq exec-path (append exec-path '("z:/soft/emacs-24.3/global/bin")))
;; 初始化cygwin环境
(require 'init_cygwin)
;;(require 'init_project)
(provide 'init_windows)

