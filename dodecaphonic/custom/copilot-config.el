(use-package quelpa)

(use-package quelpa-use-package
  :after quelpa)

(use-package copilot
  :after quelpa quelpa-use-package
  :ensure nil
  :quelpa (copilot :fetcher github
                   :repo "zerolfx/copilot.el"
                   :branch "main"
                   :files ("dist" "*.el"))
  :bind
  ("<backtab>" . copilot-accept-completion)
  :config
  (add-hook 'prog-mode-hook 'copilot-mode))
