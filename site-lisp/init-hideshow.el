;; init-hideshow.el Initialization

(load-library "hideshow")

(dolist (hook (list
               'c++-mode-hook
               'c-mode-hook
               'java-mode-hook
               'perl-mode-hook
               'php-mode-hook
               'emacs-lisp-mode-hook
               'lisp-mode-hook))
  (add-hook hook (lambda() (hs-minor-mode 1))))

(provide 'init-hideshow)
