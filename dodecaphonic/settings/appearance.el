;;; package --- Defines appearance-related things
;;; Commentary:
;;; Code:

(use-package doom-themes
  :init
  (custom-set-variables
   '(custom-safe-themes
     (quote
      ("77113617a0642d74767295c4408e17da3bfd9aa80aaa2b4eeb34680f6172d71a" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "e1ecb0536abec692b5a5e845067d75273fe36f24d01210bf0aa5842f2a7e029f" "2d1fe7c9007a5b76cea4395b0fc664d0c1cfd34bb4f1860300347cdad67fb2f9" default))))
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
  (set-frame-font "Iosevka-12:weight=book"))

(provide 'appearance)

;;; appearance.el ends here
