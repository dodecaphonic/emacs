(require 'cl)

(defvar emacs-root (expand-file-name "~/.emacs.d/"))

;; add all the elisp directories under ~/.emacs.d to load path
(labels ((add-path (p)
	 (add-to-list 'load-path
			(concat emacs-root p))))
  (add-path "")
  (add-path "dodecaphonic/custom")
  (add-path "vendor")
  (add-path "utilities")
)

;; Guarantees emacs installs every required package
(load-library
 (expand-file-name (concat emacs-root "dodecaphonic/init/packages.el")))

;; Loads all .el files in a directory
(load-library
 (expand-file-name (concat emacs-root "load-directory.el")))

(load-directory (concat emacs-root "vendor"))
(load-directory (concat emacs-root "utilities"))

;; Loads up what makes emacs *my* emacs
(load-directory (concat emacs-root "dodecaphonic/settings"))
(load-directory (concat emacs-root "dodecaphonic/custom"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default)))
 '(php-mode-force-pear t)
 '(ruby-refactor-add-parens t)
 '(ruby-refactor-keymap-prefix (kbd "C-c t"))
 '(safe-local-variable-values (quote ((encoding . utf-8) (encoding . binary)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
