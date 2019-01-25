;;; package --- haskell-config.el - Haskell coding config
;;; Commentary:
;;; Code:

(use-package haskell-mode
  :config
  (require 'haskell-interactive-mode)
  (require 'haskell-process)

  (setq haskell-stylish-on-save t)
  (haskell-indentation-mode t)
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  :bind
  ("C-," . haskell-move-nested-left)
  ("C-." . haskell-move-nested-right)
  ("<f8>" . haskell-navigate-imports)
  ("C-c C-l" . haskell-process-load-or-reload)
  ("C-`" . haskell-interactive-bring)
  ("C-c C-t" . haskell-process-do-type)
  ("C-c C-i" . haskell-process-do-info)
  ("C-c C-c" . haskell-process-cabal-build)
  ("C-c C-k" . haskell-interactive-mode-clear)
  ("C-c c" . haskell-process-cabal))


(use-package dante
  :ensure t
  :after haskell-mode
  :commands 'dante-mode
  :init
  (add-hook 'haskell-mode-hook 'dante-mode)
  (add-hook 'dante-mode-hook 'flycheck-mode))

(provide 'haskell-config)

;;; haskell-config.el ends here
