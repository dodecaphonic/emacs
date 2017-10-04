(use-package color-theme-sanityinc-tomorrow
  :init
  (custom-set-variables
   '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default))))
  :config
  (load-theme 'sanityinc-tomorrow-night))

(use-package nyan-mode
  :config (nyan-mode t))

(use-package telephone-line
  :config
  (setq telephone-line-primary-left-separator 'telephone-line-cubed-left
        telephone-line-secondary-left-separator 'telephone-line-cubed-hollow-left
        telephone-line-primary-right-separator 'telephone-line-cubed-right
        telephone-line-secondary-right-separator 'telephone-line-cubed-hollow-right)
  (setq telephone-line-height 24
        telephone-line-evil-use-short-tag t)
  (telephone-line-mode 1))

(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(setq frame-title-format "%b - emacs")

(global-linum-mode t) ;; Show line numbers
(setq linum-format "%d ")

(global-hl-line-mode t)
(show-paren-mode t)
(column-number-mode t)

(set-frame-size-according-to-resolution)

(when (window-system)
  (set-default-font "Iosevka"))

(set-frame-font "Iosevka-16")
(when (and window-system (eq system-type 'darwin))
  (setq ns-use-srgb-colorspace t)
  (set-frame-font "Iosevka-18")
  (mac-auto-operator-composition-mode t))
