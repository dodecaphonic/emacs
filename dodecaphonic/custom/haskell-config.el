(defun dodecaphonic-haskell-mode-hook ()
  (haskell-indentation-mode t)
  (local-set-key (kbd "C-,") 'haskell-move-nested-left)
  (local-set-key (kbd "C-.") 'haskell-move-nested-right)
  (local-set-key [f8] 'haskell-navigate-imports)
  (local-set-key (kbd "C-c C-l") 'haskell-process-load-or-reload)
  (local-set-key (kbd "C-`") 'haskell-interactive-bring)
  (local-set-key (kbd "C-c C-t") 'haskell-process-do-type)
  (local-set-key (kbd "C-c C-i") 'haskell-process-do-info)
  (local-set-key (kbd "C-c C-c") 'haskell-process-cabal-build)
  (local-set-key (kbd "C-c C-k") 'haskell-interactive-mode-clear)
  (local-set-key (kbd "C-c c") 'haskell-process-cabal)
  (local-set-key (kbd "SPC") 'haskell-mode-contextual-space))

(add-hook 'haskell-mode-hook 'dodecaphonic-haskell-mode-hook)

(require 'haskell-interactive-mode)
(require 'haskell-process)

(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(add-hook 'haskell-mode-hook #'hindent-mode)
