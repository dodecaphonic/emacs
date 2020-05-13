;;; rust-config.el --- Writing Rust with style and class (but not classes)
;;; Commentary:
;;; Code:

(use-package rust-mode
  :init
  (setq rust-format-on-save t)
  :config
  (use-package flycheck-rust
    :after flycheck
    :config
    (add-hook 'rust-mode-hook 'flycheck-rust-setup)))

(use-package rust-auto-use
  :after rust-mode)

(provide 'rust-config)

;;; rust-config.el ends here
