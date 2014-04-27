;; init-hideshow.el Initialization

(require 'semantic/bovine/gcc)

(setq semantic-default-submodes
            '(global-semantic-idle-scheduler-mode
              global-semanticdb-minor-mode
              global-semantic-idle-summary-mode
              global-semantic-highlight-func-mode
              global-semantic-mru-bookmark-mode
              ;; Internal Information OF The Semantic Parser
              global-semantic-show-unmatched-syntax-mode))

(dolist (hook (list
               'c++-mode-hook
               'c-mode-hook
               'java-mode-hook
               'perl-mode-hook
               'emacs-lisp-mode-hook
               'lisp-mode-hook))
  (add-hook hook (lambda() (semantic-mode 1))))

(provide 'init-semantic)
