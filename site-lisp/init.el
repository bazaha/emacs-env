;; Affirmatively Required Basic Features

;(require 'init-startup)
(require 'lazy-set-key)
;(require 'basic-toolkit)
(require 'redo+)
(require 'idle-require)

;; Init package and mode

(require 'init-auto-install)
(require 'init-auto-save)
(require 'init-linum)
(require 'init-autopair)
(require 'init-highlight-parentheses)
(require 'init-idle-require)
(require 'init-ace-jump-mode)
(require 'init-expand-region)
(require 'init-auto-complete)
(require 'init-indent)
(require 'init-auto-indent-mode)
(require 'init-semantic)
(require 'init-hideshow)
(require 'init-google-c-style)
(require 'init-window-number)
;;(require 'init-popwin)
;;(require 'init-mode)
;;(require 'init-flycheck)
;;(require 'init-jedi)
;;(require 'init-dired)
;;(require 'init-session)
;;(require 'init-paredit)
;;(require 'init-cursor-chg)
;;(require 'init-one-key)
;;(require 'init-key)
;;(require 'init-generic)
;;(require 'init-package)

;; Delay load feature

;;(idle-require 'pretty-lambdada)
;;(idle-require 'browse-kill-ring)
(idle-require 'init-backup)
(idle-require 'init-yasnippet)
(idle-require 'init-speedbar)
(idle-require 'init-ecb)
;;(idle-require 'init-tempbuf)
;;(idle-require 'init-docview)
;;(idle-require 'init-eldoc)
;;(idle-require 'init-idle)

(idle-require-mode 1)

(provide 'init)


