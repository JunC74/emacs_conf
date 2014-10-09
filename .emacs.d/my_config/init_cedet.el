(require 'cedet)
(require 'ecb)
(require 'ecb-autoloads)
(require 'semantic-ia)
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ; Enable template insertion menu
;; (define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)

(defun my-cedet-hook()
  (local-set-key [(control return)] ¡®semantic-ia-complete-symbol)

  (local-set-key "\C-c?" ¡®semantic-ia-complete-symbol-menu)
  (local-set-key (kbd "M-n") ¡®semantic-ia-complete-symbol-menu)

  (local-set-key "\C-c>" ¡®semantic-complete-analyze-inline)
  (local-set-key (kbd "M-/") ¡®semantic-complete-analyze-inline)

  (local-set-key "\C-cp" ¡®semantic-analyze-proto-impl-toggle)
  (local-set-key "\C-cd" ¡®semantic-ia-fast-jump)
  (local-set-key "\C-cr" ¡®semantic-symref-symbol)
  (local-set-key "\C-cR" ¡®semantic-symref)

  ;; c/c++ setting
  (local-set-key "." ¡®semantic-complete-self-insert)
  (local-set-key ">" ¡®semantic-complete-self-insert))
;; (add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)

(ede-cpp-root-project "Test"

                      :name "XoYo Project"

                      :file "e:/code/client/xoyo_head/text.lua"

                      :include-path '("/" "/Common" "/Interfaces" "/Libs" )

                      :system-include-path '("~/exp/include")

                      :spp-table '(("isUnix" . "") ("BOOST_TEST_DYN_LINK" . "")))
(provide 'init_cedet)
