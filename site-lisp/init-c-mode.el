;; init-c-mode.el --- File mode setup
;; Author : Winter Fu
;; Date : 2014-11-12
;; Filename: init-c-mode.el
;; Description: C/C++ File mode setup

(dolist (elt-cons '(
                    ("\\.h\\'" . c++-mode)
                    ("\\.hpp\\'" . c++-mode)
                    ))
  (add-to-list 'auto-mode-alist elt-cons))

(add-hook
 'c-mode-common-hook
 '(lambda ()
    (require 'bazaha-c-style)
    (bazaha-set-c-style)
    (bazaha-make-newline-indent)

    (require 'c-eldoc)
    (c-turn-on-eldoc-mode)
	
	;;(require 'flymake-clang)
	;;(flymake-clang-load)
    ))

(provide 'init-c-mode)

;; init-c-mode.el ends here
