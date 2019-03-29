;;; package --- Configures direnv with emacs.
;;; Commentary:
;;; Code:

(use-package direnv
  :hook (flycheck-before-syntax-check . direnv-update-environment)
  :config
  (direnv-mode))

(provide 'direnv-config)

;;; direnv-config.el ends here
