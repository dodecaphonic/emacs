(add-to-list 'load-path (concat emacs-root ".emacs.d/vendor/ensime/elisp"))
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
