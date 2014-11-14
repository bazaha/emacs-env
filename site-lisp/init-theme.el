;; Load Winter's theme
;; Autor : Winter Fu
;; Date : 2014-11-10

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; Graphic theme
(if (display-graphic-p)
	(add-hook 'after-init-hook 'load-cyberpunk)
  (add-hook 'after-init-hook 'load-cyberpunk)
  )

(defun load-cyberpunk ()
  (load-theme 'cyberpunk t)
  )

(defun load-alect ()
  (load-theme 'alect-light t)
  )

(defun load-darcula ()
  (require 'darcula-theme)
  (set-frame-font "Monaco-12")
  )

(defun load-assemblage ()
  (load-theme 'assemblage)
  (set-frame-font "Monaco-12")
  )

(defun load-smyx ()
  (load-theme 'smyx)
  )

(add-to-list 'default-frame-alist
             '(font . "Monaco-12"))

(provide 'init-theme)
