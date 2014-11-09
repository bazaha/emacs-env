;; Initialization window-number

;; Filename: init-window-number.el

(require 'window-number)
(window-number-mode 1)

(global-set-key (kbd "C-x o") 'window-number-switch)

(provide 'init-window-number)
