;;; groovy-config.el --- Groovy configuration
;;; Commentary:
;;; Code:

(use-package groovy-mode
  :config
  (add-hook 'groovy-mode-hook
            (lambda ()
              (setq groovy-indent-offset 2))))

(use-package groovy-imports
  :after groovy-mode)

(provide 'groovy-config)

;;; groovy-config.el ends here
