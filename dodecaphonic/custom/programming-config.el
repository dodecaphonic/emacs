;;; programming-config -- general configuration for programming modes
;;; Commentary:
;;; Code:

;; Using whitespace-mode to visualize line length
;; From: http://emacsredux.com/blog/2013/05/31/highlight-lines-that-exceed-a-certain-length-limit/
(require 'whitespace)

(which-function-mode)

(defun programming-custom()
  "Defaults for all children of \='prog-mode\='."
  (setq whitespace-line-column 80) ;; limit line length
  (setq whitespace-style '(face lines-tail))
  (setq show-trailing-whitespace t)
  (setq display-line-numbers t)
  (local-set-key (kbd "C-c =") 'dodecaphonic/align=)
  (local-set-key (kbd "C-c /") 'comment-region)
  (add-hook 'local-write-file-hooks
            '(lambda()
               (save-excursion
                 (unless go-mode-map
                   (untabify (point-min) (point-max)
                             (delete-trailing-whitespace)
                             ))))))

(add-hook 'prog-mode-hook 'programming-custom)

(use-package smartparens :ensure t
  :config
  (show-smartparens-global-mode t))

(use-package flycheck :ensure t
  :config
  (global-flycheck-mode)
  (use-package flycheck-pos-tip :ensure t)
  (with-eval-after-load 'flycheck
    (flycheck-pos-tip-mode)
    (setq flycheck-check-syntax-automatically '(mode-enabled save))))

(use-package yasnippet :ensure t)

(use-package json)

(use-package diff-hl :ensure t
  :config
  (global-diff-hl-mode)
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh))

(use-package flycheck-eglot :ensure t
  :after flycheck eglot
  :config
  (global-flycheck-eglot-mode 1))

(use-package eglot
  :config
  (add-hook 'eglot-managed-mode-hook #'eglot-inlay-hints-mode)
  (defun dodecaphonic/eglot-ensure-after-direnv ()
    (direnv-update-environment)
    (eglot-ensure))

  (add-hook 'purescript-mode-hook 'eglot-ensure)
  (add-hook 'typescript-mode-hook 'dodecaphonic/eglot-ensure-after-direnv)
  (add-hook 'js2-mode-hook 'eglot-ensure)
  (add-hook 'rust-mode-hook 'eglot-ensure)
  (add-hook 'ruby-mode-hook 'dodecaphonic/eglot-ensure-after-direnv)

  (defun dodecaphonic/eglot-format-buffer ()
    (when (and (eglot-current-server)
               (not (derived-mode-p 'js2-mode 'typescript-mode)))
      (ignore-errors
        (eglot-format-buffer))))

  (add-hook 'before-save-hook 'dodecaphonic/eglot-format-buffer)

  (with-eval-after-load 'eglot
    (add-to-list 'eglot-server-programs
                 '((js-mode js2-mode) . ("typescript-language-server" "--stdio")))
    (add-to-list 'eglot-server-programs
                 '(web-mode . ("typescript-language-server" "--stdio")))
    (add-to-list 'eglot-server-programs '(rust-mode . ("rust-analyzer")))
    (add-to-list 'eglot-server-programs '(go-mode . ("gopls")))
    (add-to-list 'eglot-server-programs '(haskell-mode . ("haskell-language-server-wrapper" "--lsp")))
    (add-to-list 'eglot-server-programs '(purescript-mode . ("purescript-language-server" "--stdio")))
    (add-to-list 'eglot-server-programs '(ruby-mode . ("ruby-lsp")))
    (add-to-list 'eglot-server-programs
                 '((html-mode web-mode) . ,(eglot-alternatives
                                              '(("vscode-html-language-server" "--stdio")
                                                ("html-languageserver" "--stdio")))))
    (add-to-list 'eglot-server-programs
                 '((css-mode css-ts-mode) . ,(eglot-alternatives
                                                '(("vscode-css-language-server" "--stdio")
                                                  ("css-languageserver" "--stdio")))))))

(provide 'programming-config)

;;; programming-config.el ends here
