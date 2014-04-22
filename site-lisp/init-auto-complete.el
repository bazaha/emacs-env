;;; init-auto-complete.el --- Init for auto complete

;; Filename: init-auto-complete.el

;;; Require

(require 'auto-complete-config)
(require 'auto-complete-clang-extension)

;;; Code:
;; defaut dict path
(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete/dict")
(ac-config-default)
(setq ac-use-quick-help nil)
;(setq ac-auto-start 2)
;(ac-set-trigger-key "M-TAB")
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(define-key ac-mode-map (kbd "C-c h") 'ac-last-quick-help)
(define-key ac-mode-map (kbd "C-c H") 'ac-last-help)
(global-set-key (kbd "C-c /") 'ac-complete-filename)

(setq ac-use-menu-map t)
;(define-key ac-menu-map "\C-n" 'ac-next)
;(define-key ac-menu-map "\C-p" 'ac-previous)
;; Show 0.8 second later
;(setq ac-auto-show-menu 0.6)

(setq-default
 ac-sources
 '(
   ac-source-yasnippet
   ac-source-abbrev
   ac-source-words-in-buffer
   ac-source-words-in-same-mode-buffers
   ac-source-files-in-current-dir
   ac-source-filename
   ))

(add-hook 'c++-mode
	  (lambda ()
	    (add-to-list 'ac-sources 'ac-source-semantic)))

(add-hook 'cc-mode
	  (lambda ()
	    (add-to-list 'ac-sources 'ac-source-semantic)))

(provide 'init-auto-complete)

;;; init-auto-complete.el ends here
