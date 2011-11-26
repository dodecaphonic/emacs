(require 'cl)

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

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
(vendor 'rainbow-mode)

;; Loads up what makes emacs *my* emacs
(load-directory (concat emacs-root ".emacs.d/custom"))

(shell)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  '(safe-local-variable-values (quote ((encoding . binary)))))
