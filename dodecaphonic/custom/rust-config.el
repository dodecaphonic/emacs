;;; rust-config.el --- Writing Rust with style and class (but not classes)
;;; Commentary:
;;; Code:

(use-package rust-mode :ensure t
  :init
  (setq rust-format-on-save t)
  :config
  (use-package flycheck-rust :ensure t
    :after flycheck
    :config
    (add-hook 'rust-mode-hook 'flycheck-rust-setup)))

(use-package rust-auto-use :ensure t
  :after rust-mode)

(provide 'rust-config)

;;; rust-config.el ends here
