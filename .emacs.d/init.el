(add-to-list 'load-path "~/.emacs.d/my_config/")

;; =================== emacs 基本配置 ===================
(setq emacs-load-start-time (current-time))

;; 设置加载路径
(require 'init_emacs)
(require 'init_c_mod)
(require 'init_lua)
(require 'init_auto_complete)
(require 'init_color_theme)
(require 'init_dired_mode)
(require 'init_cygwin)

(require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

(provide 'init)
