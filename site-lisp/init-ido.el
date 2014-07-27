;;; init-ido.el --- Ido configuration

;; Filename: init-ido.el
;; Description: Ido configuration

;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-ido)

(ido-mode t)                                        ;开启ido模式
(setq ido-enable-flex-matching t)                   ;模糊匹配
(setq ido-everywhere nil)                           ;禁用ido everyting, 拷贝操作不方便

(provide 'init-ido)

;;; init-ido.el ends here
