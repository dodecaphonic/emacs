;;; package --- counsel-config.el - Counsel and Ivy configuration
;;; Commentary:
;;; Code:

(use-package counsel)

(use-package ivy
  :after counsel
  :config
  (ivy-mode t)
  (counsel-mode t)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  :bind
  ("C-x C-f" . counsel-find-file)
  ("<f2> u" . counsel-unicode-char)
  ("M-x" . counsel-M-x)
  ("C-x C-m" . counsel-M-x))
;;; counsel-config.el ends here
