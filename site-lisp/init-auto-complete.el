;;; init-auto-complete.el --- Init for auto complete

;; Filename: init-auto-complete.el

;;; Require

(require 'auto-complete-config)
(require 'auto-complete-c-headers)
;;(require 'auto-complete-clang-extension)

;;; Code:
;; defaut dict path
(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete/dict")

(ac-config-default)

(setq ac-use-quick-help t)
(setq ac-quick-help-delay 2)
(setq ac-auto-start nil)
;;(setq ac-auto-show-menu 0.8)
(setq ac-menu-height 8)
(setq ac-ignore-case 'smart)
(setq ac-use-menu-map t)
(setq ac-candidate-limit 32)
(setq ac-use-comphist nil)
(setq popup-use-optimized-column-computation nil)

(ac-set-trigger-key "TAB")
;;(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(global-set-key "\M-/" 'auto-complete)
(global-set-key (kbd "C-c /") 'ac-complete-filename)
;;(define-key ac-mode-map (kbd "C-c h") 'ac-last-quick-help)
;;(define-key ac-mode-map (kbd "C-c H") 'ac-last-help)
;; Candidate select keys
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)
;;define TAB RET keys behivor
(define-key ac-completing-map "\t" 'ac-complete)
(define-key ac-completing-map "\r" nil)
;; Complete members
(add-hook 'c++-mode-hook
          (lambda ()
            (local-set-key "." 'ac-complete-semantic-self-insert)
			(local-set-key ">" 'ac-complete-semantic-self-insert)))

(add-hook 'c-mode-hook
		  (lambda ()
			(local-set-key "." 'ac-complete-semantic-self-insert)
			(local-set-key ">" 'ac-complete-semantic-self-insert)))

(setq-default ac-sources
			  '(
				ac-source-yasnippet
				ac-source-abbrev
				ac-source-words-in-buffer
				ac-source-words-in-same-mode-buffers
				ac-source-files-in-current-dir
				ac-source-filename
				ac-source-imenu
				))

(add-hook 'c++-mode-hook
          (lambda ()
            (add-to-list 'ac-sources
						 '(
						   ac-source-semantic
						   ac-source-gtags
						   ac-source-c-headers
						   ))))
(add-hook 'c-mode-hook
          (lambda ()
            (add-to-list 'ac-sources
                         '(
                           ac-source-semantic
                           ac-source-gtags
						   ac-source-c-headers
                           ))))

;;(add-to-list 'ac-stop-words '(":"))

(defun ac-complete-semantic-self-insert (arg)
  (interactive "p")
  (self-insert-command arg)
  (ac-complete-semantic))

(defun semantic-and-gtags-complete ()
  (interactive)
  (auto-complete '(ac-source-semantic ac-source-gtags)))

;; workaround for flyspell-mode buffer
(ac-flyspell-workaround)

(provide 'init-auto-complete)

;;; init-auto-complete.el ends here
