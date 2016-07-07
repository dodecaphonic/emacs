(use-package typescript-mode
  :config
  (use-package tide
    :config
    (defun dodecaphonic-tide-setup ()
      (tide-setup)
      (flycheck-mode t)
      (setq flycheck-check-syntax-automatically '(save mode-enabled))
      (eldoc-mode t)
      (company-mode t))

    (add-hook 'typescript-mode-hook #'dodecaphonic-tide-setup)))
