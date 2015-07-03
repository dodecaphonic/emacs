(defun dodecaphonic-haskell-mode-hook ()
  (haskell-indentation-mode))

(add-hook 'haskell-mode-hook 'dodecaphonic-haskell-mode-hook)
