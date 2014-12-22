;; Init django-mode and django-html-mode
;; Author : bazaha
;; Date : 2014-12-22

(require 'django-mode)
(require 'django-html-mode)
(yas/load-directory "~/.emacs.d/packages/django-mode/snippets")
(add-to-list 'auto-mode-alist '("\\.djhtml$" . django-html-mode))

(provide 'init-django)
