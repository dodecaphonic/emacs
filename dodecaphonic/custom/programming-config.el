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
                 (untabify (point-min) (point-max))
                 (delete-trailing-whitespace)))))

(add-hook 'prog-mode-hook 'programming-custom)

(use-package rainbow-delimiters
  :config
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

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

(use-package smart-tabs-mode)

(use-package yasnippet)

(use-package expand-region)

(use-package json)

(use-package hydra :ensure t)

(use-package lsp-mode
  :commands lsp
  :init
  (add-hook 'prog-mode-hook 'lsp-mode))

(use-package lsp-ui :ensure t)

(use-package company-lsp :commands company-lsp)

(use-package treemacs
  :ensure t
  :defer t)

(use-package treemacs-projectile
  :after treemacs projectile
  :ensure t)

(use-package treemacs-magit
  :after treemacs magit
  :ensure t)

(use-package dap-mode
  :ensure t :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode t))

(provide 'programming-config)

;;; programming-config.el ends here
