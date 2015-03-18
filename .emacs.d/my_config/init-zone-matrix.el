;; zone-matrix 屏保
(require 'zone-matrix)
(require 'zone-matrix-settings)
(require 'zone-settings)

(setq zone-programs [zone-matrix])
(zone-when-idle 60)

(provide 'init-zone-matrix)
