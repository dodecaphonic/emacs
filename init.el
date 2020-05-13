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
    ("e1ecb0536abec692b5a5e845067d75273fe36f24d01210bf0aa5842f2a7e029f" "2d1fe7c9007a5b76cea4395b0fc664d0c1cfd34bb4f1860300347cdad67fb2f9" default)))
 '(package-selected-packages
   (quote
    (ob-typescript rust-auto-use rust jest queue cider clojure clojure-mode company-terraform terraform-mode rjsx-mode maven-test-mode groovy-imports groovy-mode treemacs-magit lsp-java direnv kotlin-mode nix-sandbox rainbow-delimiters nix-mode darkroom helm-projectile psc-ide prettier-js add-node-modules-path go-mode telephone-line haml-mode olivetti writeroom-mode csv-mode org ox-reveal ensime scala-mode flycheck-flow company-flow scala-mode2 yard-mode yaml-mode tern-auto-complete smartparens smart-tabs-mode scss-mode rust-mode ruby-tools ruby-refactor rubocop rspec-mode rainbow-mode purescript-mode paradox nyan-mode markdown-mode helm-flx gist flycheck-rust expand-region elm-mode company-tern color-theme-sanityinc-tomorrow chruby)))
 '(ruby-refactor-add-parens t)
 '(ruby-refactor-keymap-prefix (kbd "C-c t"))
 '(safe-local-variable-values
   (quote
    ((cljr-favor-prefix-notation . t)
     (eval progn
           (put
            (quote defendpoint)
            (quote clojure-doc-string-elt)
            3)
           (put
            (quote defendpoint-async)
            (quote clojure-doc-string-elt)
            3)
           (put
            (quote api/defendpoint)
            (quote clojure-doc-string-elt)
            3)
           (put
            (quote api/defendpoint-async)
            (quote clojure-doc-string-elt)
            3)
           (put
            (quote defsetting)
            (quote clojure-doc-string-elt)
            2)
           (put
            (quote setting/defsetting)
            (quote clojure-doc-string-elt)
            2)
           (put
            (quote s/defn)
            (quote clojure-doc-string-elt)
            2)
           (define-clojure-indent
             (assert 1)
             (assoc 1)
             (ex-info 1)
             (expect 0)
             (match 1)
             (merge-with 1)
             (with-redefs-fn 1)))
     (prettier-js-mode quote t)
     (js2-basic-offset . 4)
     (dante-repl-command-line "nix-shell" "--run" "cabal new-repl")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)
