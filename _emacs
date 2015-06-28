(load "~/.emacs.d/plugins/subdirs.el")
(mapc 'load (directory-files "~/.emacs.d" t "/.el$"))
;;(add-to-list 'load-path "~/.emacs.d")
(load-file "~/.emacs.d/init.el")

(put 'narrow-to-region 'disabled nil)
