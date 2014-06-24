(add-to-list 'load-path "~/.emacs.d/my_config/")

;; =================== emacs 基本配置 ===================
(setq emacs-load-start-time (current-time))

;; 设置加载路径
(require 'init_emacs)
(require 'init_c_mod)
(require 'init_lua)
(require 'init_auto_complete)
(require 'init_color_theme)

(provide 'init)
