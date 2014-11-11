(require 'rainbow-delimiters)

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Rainbow delimiters
(defun assemblage-rainbow-delim-set-face ()
  (set-face-attribute 'rainbow-delimiters-depth-1-face   nil :foreground "#446622")
  (set-face-attribute 'rainbow-delimiters-depth-2-face   nil :foreground "#668844")
  (set-face-attribute 'rainbow-delimiters-depth-3-face   nil :foreground "#88aa66")
  (set-face-attribute 'rainbow-delimiters-depth-4-face   nil :foreground "#AACC88")
  (set-face-attribute 'rainbow-delimiters-depth-5-face   nil :foreground "#CCDDAA")
  (set-face-attribute 'rainbow-delimiters-depth-6-face   nil :foreground "#DEEEAA")
  (set-face-attribute 'rainbow-delimiters-depth-7-face   nil :foreground "#EFFFBB")
  (set-face-attribute 'rainbow-delimiters-depth-8-face   nil :foreground "#EFFFCC")
  (set-face-attribute 'rainbow-delimiters-depth-9-face   nil :foreground "#EFFFEE")
  (set-face-attribute 'rainbow-delimiters-unmatched-face nil :foreground "#AA0000"))

(eval-after-load "rainbow-delimiters" '(assemblage-rainbow-delim-set-face))

(provide 'init-rainbow-delimiters)
