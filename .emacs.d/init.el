(add-to-list 'load-path "~/.emacs.d/my_config/")

;; =================== emacs 基本配置 ===================
(setq emacs-load-start-time (current-time))

;; 设置加载路径
(require 'ahei-misc)
(require 'init_el_get)
(require 'init_emacs)
(require 'init_c_mod)
(require 'init_keyboard)

(when (eq 'cygwin system-type)
  (require 'windows-path)
  (windows-path-activate)
)

(when (eq 'windows-nt system-type)
  (require 'init_windows))

;;(require 'feng-highlight)
(require 'init_cedet)
(require 'init_mk_prj)

(provide 'init)
