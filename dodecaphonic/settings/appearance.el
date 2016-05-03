(use-package color-theme-sanityinc-tomorrow
  :config
  (load-theme 'sanityinc-tomorrow-night))

(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(setq frame-title-format "%b - emacs")

(global-linum-mode t) ;; Show line numbers
(setq linum-format "%d ")

(global-hl-line-mode t)
(show-paren-mode t)
(column-number-mode t)

(nyan-mode t)

(set-frame-size-according-to-resolution)

(when (window-system)
  (set-default-font "Fira Code"))

(set-frame-font "Fira Code-13")
(when (and window-system (eq system-type 'darwin))
  (setq ns-use-srgb-colorspace t)
  (set-frame-font "Fira Code-16")
  (mac-auto-operator-composition-mode t))
