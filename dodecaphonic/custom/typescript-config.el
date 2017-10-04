(use-package typescript-mode
  :config
  (use-package tide
    :config
    (defun dodecaphonic-tide-setup ()
      (tide-setup)
      (flycheck-mode t)
      (setq typescript-indent-level 2)
      (setq flycheck-check-syntax-automatically '(save mode-enabled))
      (eldoc-mode t))
    (add-hook 'before-save-hook 'tide-format-before-save)
    (add-hook 'typescript-mode-hook #'dodecaphonic-tide-setup)))

(with-eval-after-load "web-config"
  (require 'web-mode)

  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
  (add-hook 'web-mode-hook
            (lambda ()
              (when (string-equal "tsx" (file-name-extension buffer-file-name))
                (tide-setup)))))

(provide 'typescript-config)
