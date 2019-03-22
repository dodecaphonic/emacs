(require 'cl)

(defvar emacs-root (expand-file-name "~/.emacs.d/"))

;; add all the elisp directories under ~/.emacs.d to load path
(labels ((add-path (p)
         (add-to-list 'load-path
                        (concat emacs-root p))))
  (add-path "dodecaphonic/custom")
  (add-path "vendor")
  (add-path "utilities")
)

;; Guarantees emacs installs every required package
(load-library
 (expand-file-name (concat emacs-root "dodecaphonic/init/packages.el")))

(package-initialize)


;; Loads all .el files in a directory
(load-library
 (expand-file-name (concat emacs-root "load-directory.el")))

(load-directory (concat emacs-root "vendor"))
(load-directory (concat emacs-root "utilities"))

;; Loads up what makes emacs *my* emacs
(load-directory (concat emacs-root "dodecaphonic/settings"))
(load-directory (concat emacs-root "dodecaphonic/commands"))
(load-directory (concat emacs-root "dodecaphonic/custom"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" default)))
 '(package-selected-packages
   (quote
    (nix-sandbox rainbow-delimiters nix-mode darkroom helm-projectile psc-ide prettier-js add-node-modules-path go-mode telephone-line haml-mode olivetti writeroom-mode csv-mode org ox-reveal ensime scala-mode flycheck-flow company-flow scala-mode2 yard-mode yaml-mode use-package tern-auto-complete smartparens smart-tabs-mode scss-mode rust-mode ruby-tools ruby-refactor rubocop rspec-mode rainbow-mode purescript-mode paradox nyan-mode markdown-mode helm-flx gist flycheck-rust expand-region elm-mode company-tern color-theme-sanityinc-tomorrow chruby)))
 '(ruby-refactor-add-parens t)
 '(ruby-refactor-keymap-prefix (kbd "C-c t"))
 '(safe-local-variable-values
   (quote
    ((dante-repl-command-line "nix-shell" "--run" "cabal new-repl")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)
