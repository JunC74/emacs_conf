(add-to-list 'load-path "~/.emacs.d/my_config/")

;; =================== emacs 基本配置 ===================
(setq emacs-load-start-time (current-time))

;; 设置加载路径
(require 'ahei-misc)
(require 'init_el_get)
(require 'init_emacs)
(require 'init_c_mod)
(require 'init_keyboard)
(require 'init-system-environment)
(require 'init_cedet)
(require 'init_mk_prj)
;; (require 'init-wcy-swbuff)
;; (require 'init-hl-line)
(require 'init-zone-matrix)
(require 'init-font-align)
(require 'init-run-file)
(provide 'init)
