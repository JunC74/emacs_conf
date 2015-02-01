;; 1. s s �����ļ���С����
;; 2. s x �����ļ���չ������
;; 3. s t �����ļ�����ʱ������
;; 4. s b �����ļ����Ƶ���ĸ˳������
(setq diredp-hide-details-propagate-flag nil)

(add-hook 'dired-mode-hook (lambda ()
  (interactive)
  (make-local-variable  'dired-sort-map)
  (setq dired-sort-map (make-sparse-keymap))
  (define-key dired-mode-map "s" dired-sort-map)
  (define-key dired-sort-map "s"
              '(lambda () "sort by Size"
                (interactive) (dired-sort-other (concat dired-listing-switches "S"))))
  (define-key dired-sort-map "x"
              '(lambda () "sort by eXtension"
                 (interactive) (dired-sort-other (concat dired-listing-switches "X"))))
  (define-key dired-sort-map "t"
              '(lambda () "sort by Time"
                 (interactive) (dired-sort-other (concat dired-listing-switches "t"))))
  (define-key dired-sort-map "n"
              '(lambda () "sort by Name"
                 (interactive) (dired-sort-other (concat dired-listing-switches ""))))))

;; Ŀ¼��ǰ��
(defun sof/dired-sort ()
  "Dired sort hook to list directories first."
  (save-excursion
    (let (buffer-read-only)
      (forward-line 2) ;; beyond dir. header
      (sort-regexp-fields t "^.*$" "[ ]*." (point) (point-max))))
  (and (featurep 'xemacs)
       (fboundp 'dired-insert-set-properties)
       (dired-insert-set-properties (point-min) (point-max)))
  (set-buffer-modified-p nil))
(add-hook 'dired-after-readin-hook 'sof/dired-sort)

;; C-x C-j �򿪵�ǰ�ļ�������Ŀ¼
;; C-x C-j open the directory of current buffer
(global-set-key (kbd "C-x C-j")
                (lambda ()
                  (interactive)
                  (if (buffer-file-name)
                      (dired default-directory))))

;; �� M-&lt;up&gt; �򿪸�Ŀ¼��
(add-hook 'dired-mode-hook (lambda ()
  (interactive)
  (define-key dired-mode-map (kbd "<M-up>" )
    'dired-up-directory)
  (define-key dired-mode-map (kbd "ESC <up>" ) 'dired-up-directory)))
