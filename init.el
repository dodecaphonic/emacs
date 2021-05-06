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
   '("77113617a0642d74767295c4408e17da3bfd9aa80aaa2b4eeb34680f6172d71a" "e1ecb0536abec692b5a5e845067d75273fe36f24d01210bf0aa5842f2a7e029f" "2d1fe7c9007a5b76cea4395b0fc664d0c1cfd34bb4f1860300347cdad67fb2f9" default))
 '(package-selected-packages
   '(company-lsp add-node-modules-path yard-mode yaml-mode web-mode use-package treemacs-projectile treemacs-magit tide tern spaceline smartparens smart-tabs-mode scss-mode rust-mode rust-auto-use ruby-tools ruby-refactor rubocop rspec-mode rjsx-mode rainbow-mode rainbow-delimiters purescript-mode psc-ide prettier-js paradox org-roam ob-typescript nyan-mode nix-mode maven-test-mode lsp-ui lsp-java kotlin-mode js2-refactor jest idris-mode haskell-mode groovy-mode groovy-imports graphviz-dot-mode flycheck-rust flycheck-pos-tip flycheck-elm expand-region elm-mode doom-themes direnv darkroom counsel-projectile company-terraform auto-complete))
 '(ruby-refactor-add-parens t)
 '(ruby-refactor-keymap-prefix (kbd "C-c t"))
 '(safe-local-variable-values
   '((eval prettier-js-mode t)
     (prettier-js-mode . t)
     (prettier-js-mode)
     (cljr-favor-prefix-notation . t)
     (eval progn
           (put 'defendpoint 'clojure-doc-string-elt 3)
           (put 'defendpoint-async 'clojure-doc-string-elt 3)
           (put 'api/defendpoint 'clojure-doc-string-elt 3)
           (put 'api/defendpoint-async 'clojure-doc-string-elt 3)
           (put 'defsetting 'clojure-doc-string-elt 2)
           (put 'setting/defsetting 'clojure-doc-string-elt 2)
           (put 's/defn 'clojure-doc-string-elt 2)
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
     (dante-repl-command-line "nix-shell" "--run" "cabal new-repl"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)
