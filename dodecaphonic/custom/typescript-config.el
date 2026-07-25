(use-package typescript-mode :ensure t
  :mode ("\\.ts\\'" . typescript-mode)
  :config
  (add-hook 'typescript-mode-hook #'direnv-update-environment))

(with-eval-after-load "web-config"
  (require 'web-mode)
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode)))

(provide 'typescript-config)
