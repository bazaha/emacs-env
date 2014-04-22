;;; init-backup.el --- backup setting
;; Filename: init-backup.el

;;; Require

;;; Code:

(setq backup-directory-alist `((".*" . "~/.emacs.d/backup")))
(setq make-backup-files t)
(setq kept-old-versions 10)
(setq kept-new-versions 20)
(setq delete-old-versions t)
(setq backup-by-copying t)
(setq version-control t)

(provide 'init-backup)

;;; init-backup.el ends here
