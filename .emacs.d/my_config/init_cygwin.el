(setenv "PATH" (concat "C:/cygwin64/bin;" (getenv "PATH")))
(setq exec-path (cons "C:/cygwin64/bin" exec-path))
(require 'cygwin-mount)
(cygwin-mount-activate)

(add-hook 'comint-output-filter-functions
'shell-strip-ctrl-m nil t)
(add-hook 'comint-output-filter-functions
'comint-watch-for-password-prompt nil t)
(setq explicit-shell-file-name "bash.exe")
;; For subprocesses invoked via the shell
;; (e.g., ¡°shell -c command¡±)
(setq shell-file-name explicit-shell-file-name)

(provide 'init_cygwin)
