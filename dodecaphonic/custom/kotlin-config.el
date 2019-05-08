;;; kotlin-config -- Kotlin-specific configuration
;;; Commentary:
;;; Code:

(use-package kotlin-mode
  :config
  (add-hook 'kotlin-mode-hook #'lsp))

(provide 'kotlin-config)

;;; kotlin-config.el ends here
