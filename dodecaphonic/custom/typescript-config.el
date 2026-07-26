(use-package typescript-mode :ensure t
  :mode ("\\.ts\\'" . typescript-mode)
  :mode ("\\.tsx\\'" . typescript-mode)
  :config
  (add-hook 'typescript-mode-hook #'prettier-js-mode))

(provide 'typescript-config)
