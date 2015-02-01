;;关闭烦人的出错时的提示声
(setq visible-bell t)

;;关闭emacs启动时的画面
(setq inhibit-startup-message t)

;;关闭gnus启动时的画面
(setq gnus-inhibit-startup-message t)

;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。
(fset 'yes-or-no-p 'y-or-n-p)

;; 不显工具栏
(if (functionp 'tool-bar-mode) (tool-bar-mode 0))

;; 不显示滚动条
(if (functionp 'scroll-bar-mode) (scroll-bar-mode 0))

;; 不显示菜单栏
(menu-bar-mode 0)

;; (setq backup-directory-alist '(("." . "~/emacs_backups")));;设置备份文件的路径 
;; (setq backup-by-copying t);;备份设置方法，直接拷贝 
;; ;; Emacs 中，改变文件时，默认都会产生备份文件(以 ~ 结尾的文件)。可以完全去掉 
;; ;; (并不可取)，也可以制定备份的方式。这里采用的是，把所有的文件备份都放在一 
;; ;; 个固定的地方("~/backups")。对于每个备份文件，保留最原始的两个版本和最新的 
;; ;; 1个版本。并且备份的时候，备份文件是复本，而不是原件。 
 
;; (setq make-backup-files nil)
;; ;; 设定不产生备份文件 
 
;; ;(setq auto-save-mode t) 
;; ;;自动保存模式

;; 不生成临时文件
(setq-default make-backup-files nil)

;; 允许屏幕左移
(put 'scroll-left 'disabled nil)

;; emacs 复制到系统的剪切板
(setq x-select-enable-clipboard t) 

;; autorevert stuff 文件buffer自动更新
(autoload 'auto-revert-mode "autorevert" nil t)
(autoload 'turn-on-auto-revert-mode "autorevert" nil nil)
(autoload 'global-auto-revert-mode "autorevert" nil t)
(global-auto-revert-mode 1)

;; 字体设置
(set-frame-font "Monaco-12")
(set-fontset-font (frame-parameter nil 'font)
                    'han '("Microsoft Yahei" . "unicode-bmp"))

;;(add-to-list 'default-frame-alist '(font . "Monaco-12"))

;; 高亮当前行
;; (global-hl-line-mode 1)					

;; 显示行号
;;(require 'linum+)  
(global-linum-mode t)  

;; 显示列号。
(setq column-number-mode t)

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

;; 王垠的Emacs
;; http://docs.huihoo.com/homepage/shredderyin/emacs.html
;; session.el
;; (require 'session)
(add-hook 'after-init-hook 'session-initialize)

;; desktop  mk-prj有了文件缓存
(require  'wcy-desktop)
(wcy-desktop-init)

;; ibuffer.el
;;(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)


;; speedbar 扩展
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

;; 插入当前时间
(defun insert-current-date ()
    "Insert the current date"
    (interactive "*")
    (insert (format-time-string "%Y/%m/%d %H:%M:%S" (current-time))))
    ;; (insert (format-time-string "%Y/%m/%d" (current-time))))
;; (global-set-key "\C-xd" 'insert-current-date) 

;; 设置table的宽度
(setq default-tab-width 4)
;; 设置 m-i 的table宽度
(setq tab-stop-list (number-sequence 4 120 4))

;; 根据相应的文件名来打开文件
;; (defvar wcy-dired-find-file-cmds-alist
;;   `(("\\.xls$" "start" file-name)
;;     ("\\.doc$" "start" file-name)
;;     ("\\.pdf$" "xpdf"  file-name)
;;     ("\\.rar$" "start" file-name)
;;     ("\\.zip$" "start" file-name)
;;     ("\\.ppt$" "start" file-name)
;;     ("\\.tab$" "start" file-name))

;; 快速打开文件所在的目录
;; C-x C-j open the directory of current buffer
(global-set-key (kbd "C-x C-j")
                (lambda ()
                  (interactive)
                  (if (buffer-file-name)
                      (dired default-directory))))

;; 保存文件的时候把table换成空格
(defun untabify-except-makefiles ()
  "Replace tabs with spaces except in makefiles."
  (unless (derived-mode-p 'makefile-mode)
    (untabify (point-min) (point-max))))
;;(add-hook 'before-save-hook 'untabify-except-makefiles)

;;加载xcscope
;;(require 'xcscope) 

;; 加载gtags
(setq gtags-suggested-key-mapping t)
;;(require 'gtags)


(prefer-coding-system 'utf-8)

(provide 'init_emacs)
