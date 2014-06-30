;;关闭烦人的出错时的提示声
(setq visible-bell t)

;;关闭emacs启动时的画面
(setq inhibit-startup-message t)

;;关闭gnus启动时的画面
(setq gnus-inhibit-startup-message t)

;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。
(fset 'yes-or-no-p 'y-or-n-p)

;; 不显工具栏
(tool-bar-mode -1)

;; 没有 menubar
(setq menu-bar-mode nil);

;; 不生成临时文件
(setq-default make-backup-files nil)

;; emacs 复制到系统的剪切板
(setq x-select-enable-clipboard t) 

;; autorevert stuff 文件buffer自动更新
(autoload 'auto-revert-mode "autorevert" nil t)
(autoload 'turn-on-auto-revert-mode "autorevert" nil nil)
(autoload 'global-auto-revert-mode "autorevert" nil t)
(global-auto-revert-mode 1)

;; 字体设置
(set-default-font "Monaco-10")
(add-to-list 'default-frame-alist '(font . "Monaco-10"))

;; 显示行号
(require 'linum+)  
(global-linum-mode t)  

;; 多窗口
(require 'window-numbering)
(window-numbering-mode 1)
(winner-mode 1)
;; copied from http://puntoblogspot.blogspot.com/2011/05/undo-layouts-in-emacs.html
(global-set-key (kbd "C-x 4 u") 'winner-undo)
(global-set-key (kbd "C-x 4 r") 'winner-redo)

;; 把缺省的 major mode 设置为 text-mode
(setq default-major-mode 'text-mode)

(mouse-avoidance-mode 'animate)
;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。

(setq frame-title-format "emacs@%b")
;;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用 的提示。

(auto-image-file-mode)
;;让 Emacs 可以直接打开和显示图片。

(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号。

;;时间显示设置 
;;启用时间显示设置，在minibuffer上面的那个杠上（忘了叫什么来着） 
(display-time-mode 1) 
;;时间使用24小时制 
(setq display-time-24hr-format t) 
;;时间显示包括日期和具体时间 
(setq display-time-day-and-date t) 
;;时间的变化频率，单位多少来着？ 
(setq display-time-interval 10) 

;;选择标记设置("Shift+Space")
(global-set-key [?\S- ] 'set-mark-command)

;; Emacs只启动一个进程的方法
;; 首先，我们必须设置一个环境变量：
;; EMACS_SERVER_FILE=C:\.emacs.d\server\server
(server-start)

;; 启动最大化
(run-with-idle-timer 1 nil 'w32-send-sys-command 61488)

;; 王垠的Emacs
;; http://docs.huihoo.com/homepage/shredderyin/emacs.html
;; session.el
 (require 'session)
 (add-hook 'after-init-hook 'session-initialize)
;; desktop
(require  'wcy-desktop)
(wcy-desktop-init)
;; ibuffer.el
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
;; tabbar.el
(require 'tabbar)
(tabbar-mode 1)
;(global-set-key [(control down)] 'tabbar-backward-group)
;(global-set-key [(control up)] 'tabbar-forward-group)
(global-set-key [(control left)] 'tabbar-backward)
(global-set-key [(control right)] 'tabbar-forward)
;; 只有一组
(setq tabbar-buffer-groups-function
    (lambda (b) (list "All Buffers")))
(setq tabbar-buffer-list-function
    (lambda ()
        (remove-if
          (lambda(buffer)
             (find (aref (buffer-name buffer) 0) " *"))
          (buffer-list))))
;; sr-speed-bar
 (require 'sr-speedbar)
 (setq speedbar-show-unknown-files t)
 (setq speedbar-use-images nil)
 (setq sr-speedbar-width 30)
 (setq sr-speedbar-right-side nil)
  (global-set-key (kbd "<f5>") (lambda()
                                (interactive)
                                (sr-speedbar-toggle)))
;; 防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文。
(setq scroll-margin 3  scroll-conservatively 10000)

(provide 'init_emacs)
