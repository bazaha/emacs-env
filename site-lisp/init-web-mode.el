;; init-web-mode.el --- web-mode setup
;; Author : Winter Fu
;; Date : 2014-11-12
;; Filename: init-web-mode.el
;; Description: web-mode setup

;; Add constants
(setq web-mode-extra-constants '(("php" . ("CONS1" "CONS2"))))
(setq web-mode-enable-current-element-highlight t)
(require 'web-mode)
(dolist (elt-cons '(
                    ("\\.blade\\.php\\'" . web-mode)
                    ("\\.phtml\\'" . web-mode)
                    ("\\.tpl\\.php\\'" . web-mode)
                    ("\\.[agj]sp\\'" . web-mode)
                    ("\\.as[cp]x\\'" . web-mode)
                    ("\\.erb\\'" . web-mode)
                    ("\\.mustache\\'" . web-mode)
                    ("\\.djhtml\\'" . web-mode)
                    ("\\.html?\\'" . web-mode)
                    ))
  (add-to-list 'auto-mode-alist elt-cons))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  ;; Indentation
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-attr-indent-offset 2)
  ;; Left padding
  (setq web-mode-style-padding 1)
  (setq web-mode-script-padding 1)
  (setq web-mode-block-padding 0)
  ;; Comments
  (setq web-mode-comment-style 2)
  ;; Syntax Highlighting
  ;;(set-face-attribute 'web-mode-css-rule-face nil :foreground "Pink3")
  ;; Shortcuts
  (define-key web-mode-map (kbd "C-n") 'web-mode-tag-match)
  ;; Snippets
  (setq web-mode-extra-snippets
        '(("erb" . (("name" . ("beg" . "end"))))
          ("php" . (("name" . ("beg" . "end"))
                    ("name" . ("beg" . "end"))))
          ))
  ;; Auto-pairs
  (setq web-mode-extra-auto-pairs
        '(("erb"  . (("open" "close")))
          ("php"  . (("open" "close")
                     ("open" "close")))
          ))
  ;; Features
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-css-colorization t)
  (setq web-mode-enable-block-face t)
  (setq web-mode-enable-part-face t)
  (setq web-mode-enable-comment-keywords t)
  (setq web-mode-enable-heredoc-fontification t)
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)

(provide 'init-web-mode)

;;; init-mode.el ends here
