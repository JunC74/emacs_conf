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
(set-frame-font "Monaco-10")
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
;;(setq server-use-tcp t)
(when (equal system-type 'windows-nt)
  (server-start))

(when (eq 'windows-nt system-type)
  ;; 启动最大化
  (run-with-idle-timer 1 nil 'w32-send-sys-command 61488)
)
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
;; ;; tabbar.el
;; (require 'tabbar)
;; ;; 设置tabbar外观
;; ;; 设置默认主题: 字体, 背景和前景颜色，大小
;; (set-face-attribute 'tabbar-default-face nil
;;                                         :family "DejaVu Sans Mono"
;;                                         :background "gray80"
;;                                         :foreground "gray30"
;;                                         :height 1.0
;;                                         )
;; ;; 设置左边按钮外观：外框框边大小和颜色
;; (set-face-attribute 'tabbar-button-face nil
;;                                         :inherit 'tabbar-default
;;                                         :box '(:line-width 1 :color "yellow70")
;;                                         )
;; ;; 设置当前tab外观：颜色，字体，外框大小和颜色
;; (set-face-attribute 'tabbar-selected-face nil
;;                                         :inherit 'tabbar-default
;;                                         :foreground "DarkGreen"
;;                                         :background "LightGoldenrod"
;;                                         :box '(:line-width 2 :color "DarkGoldenrod")
;;                                         :overline "black"
;;                                         :underline "black"
;;                                         :weight 'bold
;;                                         )
;; ;; 设置非当前tab外观：外框大小和颜色
;; (set-face-attribute 'tabbar-unselected-face nil
;;                                         :inherit 'tabbar-default
;;                                         :box '(:line-width 2 :color "#00B2BF")
;;                                         )
;; (tabbar-mode 1)
;; (global-set-key [(control down)] 'tabbar-backward-group)
;; (global-set-key [(control up)] 'tabbar-forward-group)
;; (global-set-key [(control left)] 'tabbar-backward)
;; (global-set-key [(control right)] 'tabbar-forward)
;; ;; ;; 只有一组
;; ;; (setq tabbar-buffer-groups-function
;; ;;     (lambda (b) (list "All Buffers")))
;; ;; (setq tabbar-buffer-list-function
;; ;;     (lambda ()
;; ;;         (remove-if
;; ;;           (lambda(buffer)
;; ;;              (find (aref (buffer-name buffer) 0) " *"))
;; ;;           (buffer-list))))
;; ;; sr-speed-bar

;; ido扩展
(ido-mode t)                                        ;开启ido模式
(setq ido-enable-flex-matching t)                   ;模糊匹配
(setq ido-everywhere nil)                           ;禁用ido everyting, 拷贝操作不方便
(defun ido-my-keys ()
  "Set up the keymap for `ido'."

  ;; common keys
  (define-key ido-mode-map "\C-e" 'ido-edit-input)   
  (define-key ido-mode-map "\t" 'ido-complete) ;; complete partial
  (define-key ido-mode-map "\C-j" 'ido-select-text)
  (define-key ido-mode-map "\C-m" 'ido-exit-minibuffer)
  (define-key ido-mode-map "?" 'ido-completion-help) ;; list completions
  (define-key ido-mode-map [(control ? )] 'ido-restrict-to-matches)
  (define-key ido-mode-map [(control ?@)] 'ido-restrict-to-matches)

  ;; cycle through matches
  (define-key ido-mode-map "\C-r" 'ido-prev-match)
  (define-key ido-mode-map "\C-s" 'ido-next-match)
  (define-key ido-mode-map [right] 'ido-next-match)
  (define-key ido-mode-map [left] 'ido-prev-match)

  ;; toggles
  (define-key ido-mode-map "\C-t" 'ido-toggle-regexp) ;; same as in isearch
  (define-key ido-mode-map "\C-p" 'ido-toggle-prefix)
  (define-key ido-mode-map "\C-c" 'ido-toggle-case)
  (define-key ido-mode-map "\C-a" 'ido-toggle-ignore)

  ;; keys used in file and dir environment
  (when (memq ido-cur-item '(file dir))
    (define-key ido-mode-map "\C-b" 'ido-enter-switch-buffer)
    (define-key ido-mode-map "\C-d" 'ido-enter-dired)
    (define-key ido-mode-map "\C-f" 'ido-fallback-command)

    ;; cycle among directories
    ;; use [left] and [right] for matching files
    (define-key ido-mode-map [down] 'ido-next-match-dir)
    (define-key ido-mode-map [up]   'ido-prev-match-dir)

    ;; backspace functions
    (define-key ido-mode-map [backspace] 'ido-delete-backward-updir)
    (define-key ido-mode-map "\d"        'ido-delete-backward-updir)
    (define-key ido-mode-map [(meta backspace)] 'ido-delete-backward-word-updir)
    (define-key ido-mode-map [(control backspace)] 'ido-up-directory)

    ;; I can't understand this
    (define-key ido-mode-map [(meta ?d)] 'ido-wide-find-dir)
    (define-key ido-mode-map [(meta ?f)] 'ido-wide-find-file)
    (define-key ido-mode-map [(meta ?k)] 'ido-forget-work-directory)
    (define-key ido-mode-map [(meta ?m)] 'ido-make-directory)

    (define-key ido-mode-map [(meta down)] 'ido-next-work-directory)
    (define-key ido-mode-map [(meta up)] 'ido-prev-work-directory)
    (define-key ido-mode-map [(meta left)] 'ido-prev-work-file)
    (define-key ido-mode-map [(meta right)] 'ido-next-work-file)

    ;; search in the directories
    ;; use C-_ to undo this
    (define-key ido-mode-map [(meta ?s)] 'ido-merge-work-directories)
    (define-key ido-mode-map [(control ?\_)] 'ido-undo-merge-work-directory)
    )

  (when (eq ido-cur-item 'file)
    (define-key ido-mode-map "\C-k" 'ido-delete-file-at-head)
    (define-key ido-mode-map "\C-l" 'ido-toggle-literal)
    (define-key ido-mode-map "\C-o" 'ido-copy-current-word)
    (define-key ido-mode-map "\C-v" 'ido-toggle-vc)
    (define-key ido-mode-map "\C-w" 'ido-copy-current-file-name)
    )

  (when (eq ido-cur-item 'buffer)
    (define-key ido-mode-map "\C-b" 'ido-fallback-command)
    (define-key ido-mode-map "\C-f" 'ido-enter-find-file)
    (define-key ido-mode-map "\C-k" 'ido-kill-buffer-at-head)
    ))
(add-hook 'ido-define-mode-map-hook 'ido-my-keys)

;; (add-hook 'ido-make-file-list-hook 'ido-sort-mtime) ;文件的排序方法
;; (add-hook 'ido-make-dir-list-hook 'ido-sort-mtime)  ;目录的排序方法
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

(defun untabify-except-makefiles ()
  "Replace tabs with spaces except in makefiles."
  (unless (derived-mode-p 'makefile-mode)
    (untabify (point-min) (point-max))))
;;(add-hook 'before-save-hook 'untabify-except-makefiles)
(provide 'init_emacs)
