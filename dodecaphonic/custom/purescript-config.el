(defun dodecaphonic-purescript-mode-hook ()
  (turn-on-purescript-indentation))

(add-hook 'purescript-mode-hook 'dodecaphonic-purescript-mode-hook)
