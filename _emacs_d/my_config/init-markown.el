(require 'maxframe)
(setq mf-max-width 1600)  ;; Pixel width of main monitor.
(add-hook 'window-setup-hook 'maximize-frame t)
