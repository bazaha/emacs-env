;; Startup initializaion. For windows system.

;(tool-bar-mode -1)
;(menu-bar-mode -1)
(scroll-all-mode -1)

(require 'whitespace)
(setq whitespace-line-column 100) ;; limit line length
(setq whitespace-style '(face lines-tail))

(add-hook 'prog-mode-hook 'whitespace-mode)

(provide 'init-startup)
