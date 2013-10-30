(require 'grizzl)
(require 'flx-ido)

(projectile-global-mode)

(ido-mode t)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(flx-ido-mode t)
(setq ido-use-faces t)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
(setq projectile-indexing-method 'git)

(windmove-default-keybindings)
