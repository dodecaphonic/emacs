(use-package purescript-mode
  :commands purescript-mode
  :mode (("\\.purs$" . purescript-mode))
  :config
  (add-hook 'purescript-mode-hook 'turn-on-purescript-indentation)

  (use-package psc-ide
    :config
    (defun dodecaphonic-purescript-mode-hook ()
      (psc-ide-mode t)
      (flycheck-mode t))
    (add-hook 'purescript-mode-hook 'dodecaphonic-purescript-mode-hook)))

(provide 'purescript-config)
