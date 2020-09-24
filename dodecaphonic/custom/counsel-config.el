;;; package --- counsel-config.el - Counsel and Ivy configuration
;;; Commentary:
;;; Code:

(use-package ivy
  :config
  (ivy-mode 1)
  (counsel-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  :bind
  ("M-x" . counsel-M-x)
  ("C-x C-m" . counsel-M-x))

(use-package counsel-projectile
  :after ivy
  :bind
  ("C-c p" . projectile-command-map)
  ("C-c p f" . counsel-projectile-find-file)
  ("C-c p d" . counsel-projectile-find-dir))
;;; counsel-config.el ends here
