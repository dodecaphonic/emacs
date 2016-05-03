(use-package helm
  :config
  (require 'helm-config)
  (require 'helm)
  (helm-mode 1)

  (with-eval-after-load "projectile-config"
    (use-package helm-projectile
      :bind
      ("C-c p f" . helm-projectile-find-file)
      ("C-c p a" . helm-projectile-find-other-file)
      :config
      (helm-projectile-on)
      (setq projectile-completion-system 'helm)))

  :bind
  ("C-x C-m" . helm-M-x)
  ("C-x b" . helm-buffers-list)
  ("C-x C-f" . helm-find-files))

(use-package "helm-flx"
  :demand t
  :config
  (with-eval-after-load "helm"
    (require 'helm-flx)
    (helm-flx-mode 1)))

(provide 'helm-config)
