(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.wlua" . lua-mode))
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode)) 

;; (require 'flymake-lua)
;; (add-hook 'lua-mode-hook 'flymake-lua-load)n
;; (require 'lua-block)
;; (lua-block-mode t)
;; (setq lua-indent-level 4)
;; (add-hook 'lua-mode-hook
;;            '(lambda () 
;;               (setq indent-tabs-mode nil) ))
(require 'lua-block)
;; (require 'init-hl-line)

(defun junc-newline-indent ()
  "indent-newline-indent"
  (interactive "*")
  (indent-according-to-mode)
  (delete-horizontal-space t)
  (newline)
  (indent-according-to-mode))

(defun my-lua-mod-hook ()
  "JunC's Lua mod Config"
  (flymake-lua-load)
  (lua-block-mode t)
  (hl-line-mode 1)
  (setq lua-indent-level 2)
  ;; (local-set-key (kbd "RET") 'junc-newline-indent) ;回车键后下一行代码自动缩进
  (modify-syntax-entry ?_ "w")
  (setq indent-tabs-mode nil))
(add-hook 'lua-mode-hook 'my-lua-mod-hook)

(provide 'init_lua)
