;; Winter Fu Emacs configure file
;; Date 2014-03-09
;; Author Winter Fu
;; Github user.email = "winterfu@gmail.com"

;; Emacs package manager, Add source into package-archives
(require 'package)
;;original source before merage to gnu
;;("elpa" . "http://tromey.com/elpa/")
(dolist (source '(("gnu" . "http://elpa.gnu.org/packages/")
		  ("melpa" . "http://melpa.org/packages/")
		  ;;("melpa-stable" . "http://stable.melpa.org/packages/")
		  ("marmalade" . "http://marmalade-repo.org/packages/")
		  ))
  (add-to-list 'package-archives source t))
;; Change defaut `package-user-dir' to "~/.emacs.d/packages"
(setq package-user-dir "~/.emacs.d/packages")
(package-initialize)

;; Add `load-path' from ~/.emacs.d
(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to `load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))
(add-subdirs-to-load-path "~/.emacs.d/packages")
(add-subdirs-to-load-path "~/.emacs.d/site-lisp")

(require 'init)
