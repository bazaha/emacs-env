;; Semantic configuration
;; Author : Winter Fu
;; Date : 2014-11-10
;; init-hideshow.el Initialization

;; default submodes
;;(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
;;(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-local-symbol-highlight-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
;;(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-show-unmatched-syntax-mode)

;; Configure cc-mode semanticdb-find behivor
;;(setq-mode-local c-mode
;;				 semanticdb-find-default-throttle
;;				 '(project unloaded system recursive))

(semantic-mode 1)

;;(semanticdb-enable-gnu-global-databases 'c-mode t)
;;(semanticdb-enable-gnu-global-databases 'c++-mode t)

(custom-set-faces
 ;; custom semantic highlighting face
 '(semantic-highlight-func-current-tag-face
   (display-graphic-p)
   (((class color) (background dark)) (:background "gray20"))
   (((class color) (background light)) (:background "gray90"))))
(require 'srecode)

(provide 'init-semantic)
