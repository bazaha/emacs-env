;; Autopair configuration

(require 'autopair)

;; use autopair just in c buffers
;(add-hook 'c-mode-common-hook 
;          #'(lambda () (autopair-mode)))

;; use autopair everywhere but c buffers
 
;(add-hook 'c-mode-common-hook
;           #'(lambda () 
;               (autopair-mode -1))             ;; for emacsen >= 24
;)

(autopair-global-mode)

(provide 'init-autopair)

;; end of init-autopair.el
