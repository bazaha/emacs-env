;; google-c-style initialization

(require 'bazaha-c-style)

(add-hook 'c-mode-common-hook 'bazaha-set-c-style)
(add-hook 'c-mode-common-hook 'bazaha-make-newline-indent)

(provide 'init-bazaha-c-style)
