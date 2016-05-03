(use-package projectile
  :demand t
  :commands projectile-global-mode
  :config
  (setq projectile-enable-caching t)
  (projectile-global-mode))

(provide 'projectile-config)
