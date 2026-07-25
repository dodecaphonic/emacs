(use-package projectile :ensure t
  :commands projectile-global-mode
  :diminish projectile-mode
  :config
  (setq projectile-enable-caching t)
  (add-hook 'after-init-hook #'projectile-global-mode))

(provide 'projectile-config)
