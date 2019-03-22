;;; package --- Defines appearance-related things
;;; Commentary:
;;; Code:

(use-package doom-themes
  :init
  (custom-set-variables
   '(custom-safe-themes
     (quote
      ("6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" default))))
  :config
  (load-theme 'doom-one))

(use-package nyan-mode
  :config (nyan-mode t))

(use-package spaceline
  :config
  (require 'spaceline-config)
  (spaceline-spacemacs-theme))

(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(setq frame-title-format "%b - emacs")

(setq display-line-numbers t)

(global-hl-line-mode t)
(show-paren-mode t)
(column-number-mode t)

(when (window-system)
  (set-frame-font "Iosevka-14:weight=book"))

(provide 'appearance)

;;; appearance.el ends here
