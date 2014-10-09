;; tabbar.el
(require 'tabbar)
;; ����tabbar���
;; ����Ĭ������: ����, ������ǰ����ɫ����С
(set-face-attribute 'tabbar-default-face nil
                                        :family "DejaVu Sans Mono"
                                        :background "gray80"
                                        :foreground "gray30"
                                        :height 1.0
                                        )
;; ������߰�ť��ۣ�����ߴ�С����ɫ
(set-face-attribute 'tabbar-button-face nil
                                        :inherit 'tabbar-default
                                        :box '(:line-width 1 :color "yellow70")
                                        )
;; ���õ�ǰtab��ۣ���ɫ�����壬����С����ɫ
(set-face-attribute 'tabbar-selected-face nil
                                        :inherit 'tabbar-default
                                        :foreground "DarkGreen"
                                        :background "LightGoldenrod"
                                        :box '(:line-width 2 :color "DarkGoldenrod")
                                        :overline "black"
                                        :underline "black"
                                        :weight 'bold
                                        )
;; ���÷ǵ�ǰtab��ۣ�����С����ɫ
(set-face-attribute 'tabbar-unselected-face nil
                                        :inherit 'tabbar-default
                                        :box '(:line-width 2 :color "#00B2BF")
                                        )
(tabbar-mode 1)
(global-set-key [(control down)] 'tabbar-backward-group)
(global-set-key [(control up)] 'tabbar-forward-group)
(global-set-key [(control left)] 'tabbar-backward)
(global-set-key [(control right)] 'tabbar-forward)
;; ;; ֻ��һ��
;; (setq tabbar-buffer-groups-function
;;     (lambda (b) (list "All Buffers")))
;; (setq tabbar-buffer-list-function
;;     (lambda ()
;;         (remove-if
;;           (lambda(buffer)
;;              (find (aref (buffer-name buffer) 0) " *"))
;;           (buffer-list))))
(provide 'init_tabbar);
