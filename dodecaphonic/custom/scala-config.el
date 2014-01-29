;; Stolen from bodil/emacs.d/bodil-haskell.el
(font-lock-replace-symbol 'scala-mode "\\(->\\)" "→")
(font-lock-replace-symbol 'scala-mode "\\(<-\\)" "←")
(font-lock-replace-symbol 'scala-mode "\\(=>\\)" "⇒")
(font-lock-replace-symbol 'scala-mode "\\(<=\\)" "⇐")

(define-key scala-mode-map (kbd "→") (lambda () (interactive) (insert "->")))
(define-key scala-mode-map (kbd "←") (lambda () (interactive) (insert "<-")))
(define-key scala-mode-map (kbd "⇒") (lambda () (interactive) (insert "=>")))
(define-key scala-mode-map (kbd "⇐") (lambda () (interactive) (insert "<=")))

(add-to-list 'load-path (concat emacs-root "vendor/ensime/elisp"))
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
