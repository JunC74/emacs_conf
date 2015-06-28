;; cedet 的基本配置
;; 网址：http://emacser.com/cedet.htm#sec-4.3

(require 'cedet)
(setq imenu-auto-rescan t)
(global-ede-mode t)						

;; (semantic-load-enable-minimum-features)
(semantic-load-enable-code-helpers)
;; (semantic-load-enable-guady-code-helpers)
;; (semantic-load-enable-excessive-code-helpers)
(semantic-load-enable-semantic-debugging-helpers)

(provide 'init_cedet)
