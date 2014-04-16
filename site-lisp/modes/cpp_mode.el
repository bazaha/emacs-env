;;;; Winter .emacs configuration

;;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;;;; Add load-path
(add-to-list 'load-path "~/.emacs.d/site-lisp/")

;;;; Misc configuration
(show-paren-mode 1)
(setq show-paren-style 'parenthesis)
(setq-default indent-tabs-mode nil)
(setq standard-indent 4)
(setq column-number-mode 1)
(global-linum-mode 1)
(setq gdb-many-windows 1)
(setq byte-compile-warnings nil)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
;; turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode 1))
;; enable visual feedback on selections
(setq transient-mark-mode 1)
;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" system-name))
;; enable tramp
(setq tramp-default-method "ssh")

;;;; Key map
(global-set-key [(f7)] 'compile)
(global-set-key [(f6)] 'gdb)
(global-set-key [(f9)] 'grep-find)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-c /") 'comment-dwim)
(global-set-key [(f3)] 'replace-regexp)

;;;; Backup configuration
(setq-default make-backup-files 1)
(setq auto-save-default nil
      make-backup-files 1
      auto-save-mode nil
      version-control 1
      kept-old-versions 6
      kept-new-versions 1
      delete-old-versions 1
      backup-directory-alist '(("." . "~/.backups/emacs/"))
      backup-by-copying 1)

;;;; toggle sr-speedbar
(require 'sr-speedbar)
(global-set-key [(f2)] 'sr-speedbar-toggle)

;; Enable EDE
(global-ede-mode t)

;;;; Sematic configuration
(setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
                                  global-semantic-idle-summary-mode
                                  global-semanticdb-minor-mode
                                  global-semantic-mru-bookmark-mode))
(semantic-mode 1)
(global-semantic-highlight-edits-mode (if window-system 1 -1))
(global-semantic-show-unmatched-syntax-mode 1)
(global-semantic-show-parser-state-mode 1)
(setq pulse-command-advice-flag (if window-system 1 nil))

(setq hippie-expand-try-functions-list
      '(
        senator-try-expand-semantic
        try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-expand-list
        try-expand-list-all-buffers
        try-expand-line
        try-expand-line-all-buffers
        try-complete-file-name-partially
        try-complete-file-name
        try-complete-lisp-symbol
        try-complete-lisp-symbol-partially
        try-expand-whole-kill
        )
      )
(global-set-key (kbd "M-;") 'hippie-expand)
(global-set-key (kbd "M-/") 'dabbrev-expand)

;;;; CC-mode configuration
(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)
;;;; C style
(defconst my-c-style
  '((c-tab-always-indent        . t)
    (c-comment-only-line-offset . 4)
    (c-hanging-braces-alist     . ((substatement-open after)
                                   (brace-list-open)))
    (c-hanging-colons-alist     . ((member-init-intro before)
                                   (inher-intro)
                                   (case-label after)
                                   (label after)
                                   (access-label after)))
    (c-cleanup-list             . (scope-operator
                                   empty-defun-braces
                                   defun-close-semi))
    (c-offsets-alist            . ((arglist-close . c-lineup-arglist)
                                   (substatement-open . 0)
                                   (case-label        . 4)
                                   (block-open        . 0)
                                   (knr-argdecl-intro . -)))
    (c-echo-syntactic-information-p . t))
  "My C Programming Style")
(c-add-style "WINTER_C" my-c-style)
;;;; C/C++ stretgy
(defun my-c-mode-common-hook()
  (c-set-style "WINTER_C")
  (setq tab-width 4 indent-tabs-mode nil)
  ;; hungry-delete and auto-newline
  (c-toggle-auto-hungry-state 1)
  ;;(c-toggle-auto-newline 1)
  ;; key map
  ;;(define-key c-mode-base-map [(control \`)] 'hs-toggle-hiding)
  (define-key c-mode-base-map [(return)] 'newline-and-indent)
  ;;(define-key c-mode-base-map [(f7)] 'compile)
  (define-key c-mode-base-map [(meta \`)] 'c-indent-command)
  (define-key c-mode-base-map [(tab)] 'hippie-expand)
  (define-key c-mode-base-map [(tab)] 'my-indent-or-complete)
  (define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)
  ;; perprocess configuration
  (setq c-macro-shrink-window-flag 1)
  (setq c-macro-preprocessor "cpp")
  (setq c-macro-cppflags " ")
  (setq c-macro-prompt-flag 1)
  (setq hs-minor-mode 1)
  (setq abbrev-mode 1)
  )
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(defun my-c++-mode-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  (c-set-style "stroustrup")
  (define-key c++-mode-map [f3] 'replace-regexp)
  )
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

(defun my-indent-or-complete ()
  (interactive)
  (if (looking-at "\\>")
      (hippie-expand nil)
    (indent-for-tab-command))
  )
(global-set-key [(control tab)] 'my-indent-or-complete)

(setq auto-mode-alist
      (append
       '(("\\.h\\'" . c++-mode)
         )
       auto-mode-alist))

;;;; Theme configuration
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;;(load-theme 'solarized-dark t)
(defun set-frame-size-according-to-resolution ()
  (interactive)
  (when (display-graphic-p)
    (progn
      ;; use 120 char wide window for largeish displays
      ;; and smaller 80 column windows for smaller displays
      ;; pick whatever numbers make sense for you
      (if (> (x-display-pixel-width) 1280)
          (add-to-list 'default-frame-alist (cons 'width 180))
        (add-to-list 'default-frame-alist (cons 'width 80)))
      ;; for the height, subtract a couple hundred pixels
      ;; from the screen height (for panels, menubars and
      ;; whatnot), then divide by the height of a char to
      ;; get the height we want
      (add-to-list 'default-frame-alist 
                   (cons 'height (/ (- (x-display-pixel-height) 200)
                                    (frame-char-height)))))))
(set-frame-size-according-to-resolution)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
