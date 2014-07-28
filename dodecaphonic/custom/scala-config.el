;; Stolen from bodil/emacs.d/bodil-haskell.el
(require 'scala-mode2)
(require 'ensime)

(font-lock-replace-symbol 'scala-mode "\\(->\\)" "→")
(font-lock-replace-symbol 'scala-mode "\\(<-\\)" "←")
(font-lock-replace-symbol 'scala-mode "\\(=>\\)" "⇒")
(font-lock-replace-symbol 'scala-mode "\\(<=\\)" "⇐")

(define-key scala-mode-map (kbd "→") (lambda () (interactive) (insert "->")))
(define-key scala-mode-map (kbd "←") (lambda () (interactive) (insert "<-")))
(define-key scala-mode-map (kbd "⇒") (lambda () (interactive) (insert "=>")))
(define-key scala-mode-map (kbd "⇐") (lambda () (interactive) (insert "<=")))

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
