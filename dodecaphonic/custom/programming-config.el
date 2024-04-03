;;; programming-config -- general configuration for programming modes
;;; Commentary:
;;; Code:

;; Using whitespace-mode to visualize line length
;; From: http://emacsredux.com/blog/2013/05/31/highlight-lines-that-exceed-a-certain-length-limit/
(require 'whitespace)

(which-function-mode)

(defun programming-custom()
  "Defaults for all children of 'prog-mode'."
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

(use-package smartparens
  :config
  (show-smartparens-global-mode t))

(use-package flycheck
  :config
  (global-flycheck-mode)
  (use-package flycheck-pos-tip)
  (with-eval-after-load 'flycheck
    (flycheck-pos-tip-mode)
    (setq flycheck-check-syntax-automatically '(mode-enabled save))))

(use-package yasnippet)

(use-package json)

(use-package lsp-mode
  :ensure t
  :commands lsp
  :hook ((haskell-mode . lsp-deferred))
  :commands (lsp lsp-deffered))

(use-package lsp-ui :ensure t)

;; (use-package company-lsp :commands company-lsp)

(use-package treemacs-magit
  :after treemacs magit
  :ensure t)

(use-package dap-mode
  :ensure t :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode t))

(use-package format-all
  :config
  (add-hook 'prog-mode-hook 'format-all-mode))

(provide 'programming-config)

;;; programming-config.el ends here
