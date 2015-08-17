;; Load Winter's theme
;; Autor : Winter Fu
;; Date : 2014-11-10

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; Graphic theme
(if (display-graphic-p)
	(add-hook 'after-init-hook 'load-monokai)
  (add-hook 'after-init-hook 'load-monokai)
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
  (load-theme 'smyx t)
  )

(defun load-solarized ()
  (load-theme 'solarized-dark t)
  )

(defun load-hc-zenburn ()
  (load-theme 'hc-zenburn t)
  )

(defun load-monokai ()
  (load-theme 'monokai t)
  )

(add-to-list 'default-frame-alist
             '(font . "Monaco-12"))

(provide 'init-theme)
