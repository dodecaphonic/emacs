(use-package haskell-mode
  :config
  (use-package intero
    :config
    (add-hook 'haskell-mode-hook 'intero-mode))

  (require 'haskell-interactive-mode)
  (require 'haskell-process)

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

(provide 'haskell-config)
