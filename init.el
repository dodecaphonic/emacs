(require 'cl)
(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(defvar emacs-root (expand-file-name "~/"))

;; add all the elisp directories under ~/.emacs.d to load path
(labels ((add-path (p)
	 (add-to-list 'load-path
			(concat emacs-root p))))
  (add-path ".emacs.d")
  (add-path ".emacs.d/custom")
  (add-path ".emacs.d/vendor")
  (add-path ".emacs.d/utilities")
)

;; Loads all .el files in a directory
(load-library
 (expand-file-name (concat emacs-root ".emacs.d/load-directory.el")))

(load-directory (concat emacs-root ".emacs.d/vendor"))
(load-directory (concat emacs-root ".emacs.d/utilities"))

(vendor 'coffee-mode)
(vendor 'color-theme)
(vendor 'js2-mode)
(vendor 'magit)
(vendor 'rinari)

;; Loads up what makes emacs *my* emacs
(load-directory (concat emacs-root ".emacs.d/custom"))

(shell)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("501caa208affa1145ccbb4b74b6cd66c3091e41c5bb66c677feda9def5eab19c" "72cc9ae08503b8e977801c6d6ec17043b55313cda34bcf0e6921f2f04cf2da56" "71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
