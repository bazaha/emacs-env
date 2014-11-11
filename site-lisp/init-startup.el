;; Startup initializaion. For windows system.

(if (display-graphic-p)
	(progn
	  (tool-bar-mode -1)))

(scroll-all-mode -1)

(require 'whitespace)
(setq whitespace-line-column 100) ;; limit line length
(setq whitespace-style '(face lines-tail))

(add-hook 'prog-mode-hook 'whitespace-mode)

;; Windows size and position
(add-to-list 'default-frame-alist '(width . 192))
(add-to-list 'default-frame-alist '(height . 48))

(provide 'init-startup)
