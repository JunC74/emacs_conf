(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.wlua" . lua-mode))
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode)) 

(require 'flymake-lua)
(add-hook 'lua-mode-hook 'flymake-lua-load)
(require 'lua-block)
(lua-block-mode t)
(setq lua-indent-level 4)
(add-hook 'lua-mode-hook
           '(lambda () 
              (setq indent-tabs-mode nil) ))

(provide 'init_lua)
