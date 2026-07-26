(use-package projectile :ensure t
  :commands projectile-global-mode
  :diminish projectile-mode
  :config
  (setq projectile-enable-caching t)
  (setq projectile-auto-update-cache t)
  (setq projectile-auto-update-cache-with-watches t)
  (setq projectile-verbose t)
  (add-hook 'after-init-hook #'projectile-global-mode))

(provide 'projectile-config)
