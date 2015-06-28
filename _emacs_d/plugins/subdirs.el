;;==================配置包含插件信息的文件=================
(defun my-add-subdirs-to-load-path (dir)
(let ((default-directory (concat dir "/")))
(setq load-path (cons dir load-path))
(normal-top-level-add-subdirs-to-load-path)))
(my-add-subdirs-to-load-path "~/.emacs.d/plugins")
;;======================================================   