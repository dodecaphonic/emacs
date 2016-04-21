(require 'helm-config)
(require 'helm-projectile)

(setq projectile-completion-system 'helm)
(helm-projectile-on)

(global-set-key (kbd "C-x C-m") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c p f") 'helm-projectile-find-file)
(global-set-key (kbd "C-c p a") 'helm-projectile-find-other-file)
