(use-package helm
  :config
  (require 'helm)
  (helm-mode 1)

  (with-eval-after-load "projectile-config"
    (use-package helm-projectile
      :bind
      ("C-c p h" . helm-projectile)
      ("C-c p f" . helm-projectile-find-file)
      ("C-c p a" . helm-projectile-find-other-file)
      :config
      (setq projectile-completion-system 'helm)
      (helm-projectile-on)))

  (helm-autoresize-mode 1)

  (setq-default helm-display-header-line nil
                helm-autoresize-min-height 10
                helm-autoresize-max-height 35
                helm-split-window-in-side-p t
                helm-M-x-fuzzy-match t
                helm-buffers-fuzzy-match t
                helm-recentf-fuzzy-match t)

  (set-face-attribute 'helm-source-header nil :height 1.0)

  :bind
  ("C-x C-m" . helm-M-x)
  ("C-x b" . helm-buffers-list)
  ("C-x C-f" . helm-find-files)
  ("M-y" . helm-show-kill-ring))

(use-package "helm-flx"
  :demand t
  :config
  (with-eval-after-load "helm"
    (require 'helm-flx)
    (helm-flx-mode 1)))

(provide 'helm-config)
