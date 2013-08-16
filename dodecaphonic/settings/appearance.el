(setq menu-bar-mode nil)
(setq frame-title-format "%b - emacs")
(load-theme 'sanityinc-tomorrow-blue t)

(global-linum-mode t) ;; Show line numbers
(setq linum-format "%d ")

(set-frame-font "Source Code Pro-11")

(global-hl-line-mode t)
(show-paren-mode t)
(electric-pair-mode t)
(column-number-mode t)

(when (and window-system (eq system-type 'darwin))
  ;; When started from Emacs.app or similar, ensure $PATH
  ;; is the same the user would see in Terminal.app
  (set-exec-path-from-shell-PATH)
  (set-frame-font "Source Code Pro-13"))
