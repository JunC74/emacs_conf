(add-to-list 'load-path "~/.emacs.d/my_config/")

;; =================== emacs 基本配置 ===================
(setq emacs-load-start-time (current-time))

;; 设置加载路径
(require 'ahei-misc)
(require 'init_emacs)
(require 'init_c_mod)
(require 'init_lua)
(require 'init_auto_complete)
(require 'init_color_theme)
(require 'init_dired_mode)
(require 'init_keyboard)
(require 'init_ido)
;; (require 'init_tabbar)
(require 'cl)

(when (eq 'cygwin system-type)
  (require 'windows-path)
  (windows-path-activate)
)

(when (eq 'windows-nt system-type)
  (require 'init_windows))

(require 'init_highlight)
;;(require 'feng-highlight)
(require 'init_cedet)
(require 'init_mk_prj)
;; (require 'init_el_get)
(provide 'init)
