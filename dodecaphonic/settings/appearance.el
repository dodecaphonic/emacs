(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(setq frame-title-format "%b - emacs")
(load-theme 'hc-zenburn t)

(global-linum-mode t) ;; Show line numbers
(setq linum-format "%d ")

(global-hl-line-mode t)
(show-paren-mode t)
(column-number-mode t)

(nyan-mode t)

(set-frame-size-according-to-resolution)

(set-frame-font "Inconsolata-13")
(when (and window-system (eq system-type 'darwin))
  ;; When started from Emacs.app or similar, ensure $PATH
  ;; is the same the user would see in Terminal.app
  (setq ns-use-srgb-colorspace t)
  (set-frame-font "Inconsolata-16"))
