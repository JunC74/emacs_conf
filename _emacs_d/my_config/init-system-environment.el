;; 初始化系统相关东西

(when (eq 'cygwin system-type)
  (require 'windows-path)
  (windows-path-activate)
)

(when (eq 'windows-nt system-type)
  (require 'init_windows))

(when (eq 'darwin system-type)
  (require 'init_mac))

(provide 'init-system-environment)
