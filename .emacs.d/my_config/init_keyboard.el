
(global-set-key (kbd "<f2>") 'rename-buffer)

;; 快速打开文件所在的目录
;; C-x C-j open the directory of current buffer
(global-set-key (kbd "C-x C-j")
                (lambda ()
                  (interactive)
                  (if (buffer-file-name)
                      (dired default-directory))))

(provide 'init_keyboard)
