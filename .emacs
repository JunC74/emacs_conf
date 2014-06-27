(setenv "HOME" "C:/Users/Administrator/Documents/GitHub/emacs_conf")
(setenv "PATH" "C:/Users/Administrator/Documents/GitHub/emacs_conf")

(load "~/.emacs.d/plugins/subdirs.el")
(mapc 'load (directory-files "~/.emacs.d/config" t "\.el$"))
(add-to-list 'load-path "~/.emacs.d")
(load-file "~/.emacs.d/init.el")

;; windows ¬∑æ∂…Ë÷√
;; (setenv "PATH" "C:\cygwin64\bin")
;; (put 'scroll-left 'disabled nil)
