(use-package yaml-mode)

(use-package ruby-mode
  :config
  (set (make-local-variable 'indent-tabs-mode) 'nil)
  (set (make-local-variable 'tab-width) 2)
  (setq ruby-insert-encoding-magic-comment nil)
  (add-hook 'ruby-mode-hook 'flycheck-mode)
  (add-hook 'ruby-mode-hook #'direnv-update-environment)
  (add-hook 'ruby-mode-hook
            (lambda ()
              (set (make-local-variable 'flycheck-command-wrapper-function)
                    (lambda (command)
                      (append '("bundle" "exec") command)))))
  (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
  (add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

  (autoload 'run-ruby "inf-ruby"
    "Run an inferior Ruby process")

  :bind
  ("C-c =" . dodecaphonic/align=)
  ("C-c C-d" . duplicate-current-line))

(use-package ruby-tools
  :config
  (add-hook 'ruby-mode-hook 'ruby-tools-mode))

(use-package ruby-refactor
  :init
  (custom-set-variables
   '(ruby-refactor-add-parens t)
   '(ruby-refactor-keymap-prefix (kbd "C-c t")))
  :config
  (add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch))

(use-package rubocop
  :config
  (add-hook 'ruby-mode-hook 'rubocop-mode))

(use-package yard-mode
  :config
  (add-hook 'ruby-mode-hook 'yard-mode))

(use-package rspec-mode)

(provide 'ruby-config)
