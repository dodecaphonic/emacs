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
  (set-default-font "Fira Mono"))

(set-frame-font "Fira Mono-13")
(when (and window-system (eq system-type 'darwin))
  (setq ns-use-srgb-colorspace t)
  (set-frame-font "Fira Code-16")
  (mac-auto-operator-composition-mode t))
