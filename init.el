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
(load-directory (concat emacs-root "dodecaphonic/lsp"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("0325a6b5eea7e5febae709dab35ec8648908af12cf2d2b569bedc8da0a3a81c1"
     "88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e"
     "02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644"
     "835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63"
     "77113617a0642d74767295c4408e17da3bfd9aa80aaa2b4eeb34680f6172d71a"
     "e1ecb0536abec692b5a5e845067d75273fe36f24d01210bf0aa5842f2a7e029f"
     "2d1fe7c9007a5b76cea4395b0fc664d0c1cfd34bb4f1860300347cdad67fb2f9"
     default))
 '(format-all-default-formatters
   '(("Assembly" asmfmt) ("ATS" atsfmt) ("Bazel" buildifier)
     ("BibTeX" emacs-bibtex) ("C" clang-format) ("C#" csharpier)
     ("C++" clang-format) ("Cabal Config" cabal-fmt)
     ("Clojure" zprint) ("CMake" cmake-format) ("Crystal" crystal)
     ("CSS" prettier) ("Cuda" clang-format) ("D" dfmt)
     ("Dart" dart-format) ("Dhall" dhall) ("Dockerfile" dockfmt)
     ("Elixir" mix-format) ("Elm" elm-format)
     ("Emacs Lisp" emacs-lisp) ("Erlang" efmt) ("F#" fantomas)
     ("Fish" fish-indent) ("Fortran Free Form" fprettify)
     ("GLSL" clang-format) ("Go" gofmt) ("GraphQL" prettier)
     ("Haskell" brittany) ("HTML" html-tidy) ("HTML+EEX" mix-format)
     ("HTML+ERB" erb-format) ("Java" clang-format)
     ("JavaScript" prettier) ("JSON" prettier) ("JSON5" prettier)
     ("Jsonnet" jsonnetfmt) ("JSX" prettier) ("Kotlin" ktlint)
     ("LaTeX" latexindent) ("Less" prettier)
     ("Literate Haskell" brittany) ("Lua" lua-fmt)
     ("Markdown" prettier) ("Nix" nixpkgs-fmt)
     ("Objective-C" clang-format) ("OCaml" ocp-indent)
     ("Perl" perltidy) ("PHP" prettier)
     ("Protocol Buffer" clang-format) ("PureScript" purs-tidy)
     ("Python" black) ("R" styler) ("Reason" bsrefmt)
     ("ReScript" rescript) ("Ruby" standardrb) ("Rust" rustfmt)
     ("Scala" scalafmt) ("SCSS" prettier) ("Shell" shfmt)
     ("Solidity" prettier) ("SQL" sqlformat) ("Svelte" prettier)
     ("Swift" swiftformat) ("Terraform" terraform-fmt)
     ("TOML" prettier) ("TSX" prettier) ("TypeScript" prettier)
     ("V" v-fmt) ("Verilog" istyle-verilog) ("Vue" prettier)
     ("XML" html-tidy) ("YAML" prettier) ("Zig" zig)
     ("_Angular" prettier) ("_Beancount" bean-format)
     ("_Caddyfile" caddy-fmt) ("_Flow" prettier) ("_Gleam" gleam)
     ("_Ledger" ledger-mode) ("_Nginx" nginxfmt)
     ("_Snakemake" snakefmt)))
 '(lsp-ruby-lsp-formatter "standard")
 '(package-selected-packages
   '(add-node-modules-path auto-complete company-terraform copilot
                           counsel-projectile dap-mode darkroom direnv
                           doom-modeline doom-themes flycheck-pos-tip
                           flycheck-rust format-all go-mode gptel
                           graphviz-dot-mode haml-mode handlebars-mode
                           haskell-mode jest js2-refactor ligature
                           lsp-haskell lsp-ui nix-mode ob-typescript
                           prettier-js psc-ide quelpa-use-package
                           rainbow-mode reformatter rjsx-mode
                           rspec-mode rubocop ruby-refactor ruby-tools
                           rust-auto-use scss-mode solaire-mode tide
                           treemacs-magit treesit-auto typescript-mode
                           vterm yaml-mode yard-mode))
 '(ruby-refactor-add-parens t)
 '(ruby-refactor-keymap-prefix (kbd "C-c t"))
 '(safe-local-variable-values
   '((lsp-enabled-clients lsp-ruby) (eval lsp-mode 't)
     (lsp-enabled-clients lsp-ruby-lsp)
     (lsp-ruby-lsp-formatter . "standard") (lsp-format-on-save . t)
     (lsp-ruby-formatter . standard) (eval lsp)
     (lsp-ruby-lsp-use-bundler) (eval setq css-indent-offset 2)
     (eval prettier-js-mode t) (prettier-js-mode . t)
     (prettier-js-mode) (cljr-favor-prefix-notation . t)
     (eval progn (put 'defendpoint 'clojure-doc-string-elt 3)
           (put 'defendpoint-async 'clojure-doc-string-elt 3)
           (put 'api/defendpoint 'clojure-doc-string-elt 3)
           (put 'api/defendpoint-async 'clojure-doc-string-elt 3)
           (put 'defsetting 'clojure-doc-string-elt 2)
           (put 'setting/defsetting 'clojure-doc-string-elt 2)
           (put 's/defn 'clojure-doc-string-elt 2)
           (define-clojure-indent (assert 1) (assoc 1) (ex-info 1)
                                  (expect 0) (match 1) (merge-with 1)
                                  (with-redefs-fn 1)))
     (prettier-js-mode quote t) (js2-basic-offset . 4)
     (dante-repl-command-line "nix-shell" "--run" "cabal new-repl"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)
