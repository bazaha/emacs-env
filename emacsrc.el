;; Winter Fu Emacs configure file
;; Date 2014-03-09
;; Author Winter Fu
;; Github

;; Emacs package manager, Add source into package-archives
(require 'package)
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")
                  ("melpa" . "http://melpa.milkbox.net/packages/")))
  (add-to-list 'package-archives source t))
(package-initialize)
