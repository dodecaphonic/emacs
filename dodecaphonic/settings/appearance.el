(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(setq menu-bar-mode nil)
(setq frame-title-format "%b - emacs")
(load-theme 'sanityinc-tomorrow-blue t)

(global-linum-mode t) ;; Show line numbers
(setq linum-format "%d ")

(global-hl-line-mode t)
(show-paren-mode t)
(electric-pair-mode t)
(column-number-mode t)

(set-frame-size-according-to-resolution)

(set-frame-font "Inconsolata-13")
(when (and window-system (eq system-type 'darwin))
  ;; When started from Emacs.app or similar, ensure $PATH
  ;; is the same the user would see in Terminal.app
  (set-exec-path-from-shell-PATH)
  (set-frame-font "Inconsolata-16"))
