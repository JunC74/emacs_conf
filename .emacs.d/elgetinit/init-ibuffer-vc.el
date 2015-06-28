;; ibuffer 的分组策略

(setq ibuffer-saved-filter-groups
          (quote (("default"
                   ("dired" (mode . dired-mode))
		   ("f-h" (filename . "/FFF/truck/"))
		   ("f-guide" (filename . "/FFF/guide/"))
		   ("vn-h" (filename . "/vn_head/"))
		   ("emacs-config" (filename . "/.emacs.d/"))
                   ("emacs" (or
                             (name . "^\\*scratch\\*$")
                             (name . "^\\*Messages\\*$")))
                   ("gnus" (or
                            (mode . message-mode)
                            (mode . bbdb-mode)
                            (mode . mail-mode)
                            (mode . gnus-group-mode)
                            (mode . gnus-summary-mode)
                            (mode . gnus-article-mode)
                            (name . "^\\.bbdb$")
                            (name . "^\\.newsrc-dribble")))))))

(add-hook 'ibuffer-mode-hook
		  (lambda ()
			(ibuffer-switch-to-saved-filter-groups "default")))
(autoload 'ibuffer "ibuffer" "List buffers." t)


;; ;; Define ibuffer filter groups for each known project
;; (defun my/define-projectile-filter-groups ()
;;   (when (boundp 'projectile-known-projects)
;;     (setq my/project-filter-groups
;;         (mapcar
;;          (lambda (it)
;;            (let ((name (file-name-nondirectory (directory-file-name it))))
;;              `(,name (filename . ,(expand-file-name it)))))
;;          projectile-known-projects))))

;; ;; Set up default ibuffer filter groups
;; (setq ibuffer-saved-filter-groups
;;       (list
;;        (cons "default"
;;              (append
;;               (my/define-projectile-filter-groups)
;;               ;; ... whatever other groups you want, e.g.
;;               '(("dired" (mode . dired-mode))
;;                 ("erc" (mode . erc-mode)))
;;               ))))

;; ;; Enable default groups by default
;; (add-hook 'ibuffer-mode-hook
;;               (lambda ()
;;                 (ibuffer-switch-to-saved-filter-groups "default")))

;; ;; You probably don't want to see empty project groups
;; (setq ibuffer-show-empty-filter-groups nil)
