(use-package doom-themes
  :init
  (custom-set-variables
   '(custom-safe-themes
     (quote
      ("9d9fda57c476672acd8c6efeb9dc801abea906634575ad2c7688d055878e69d6" default))))
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
  (set-frame-font "Iosevka"))

(set-frame-font "Iosevka-14")

(provide 'appearance)
;;; appearance.el ends here
