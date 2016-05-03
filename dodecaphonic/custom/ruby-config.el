(use-package yaml-mode)

(use-package ruby-mode
  :config
  (set (make-local-variable 'indent-tabs-mode) 'nil)
  (set (make-local-variable 'tab-width) 2)
  (add-hook 'ruby-mode-hook 'flycheck-mode)
  (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
  (add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

  (autoload 'run-ruby "inf-ruby"
    "Run an inferior Ruby process")

  (use-package ruby-tools
    :config
    (add-hook 'ruby-mode-hook 'ruby-tools-mode))

  (use-package ruby-refactor
    :config
    (setq ruby-refactor-add-parens t)
    (setq ruby-refactor-keymap-prefix (kbd "C-c t"))
    (add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch))

  (use-package rubocop
    :config
    (add-hook 'ruby-mode-hook 'rubocop-mode))

  (use-package yard-mode
    :config
    (add-hook 'ruby-mode-hook 'yard-mode))

  (use-package chruby
    :config
    (chruby "ruby-2.3.0"))

  (use-package rspec-mode)

  :bind
  ("C-c =" . dodecaphonic/align=)
  ("C-c C-c" . xmp)
  ("C-c C-d" . duplicate-current-line))
