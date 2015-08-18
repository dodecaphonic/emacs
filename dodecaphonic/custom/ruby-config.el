(require 'yaml-mode)

(add-hook 'enh-ruby-mode-hook
          (lambda()
            (set (make-local-variable 'indent-tabs-mode) 'nil)
            (set (make-local-variable 'tab-width) 2)
            (local-set-key (kbd "C-c =") 'dodecaphonic/align=)
            (local-set-key (kbd "C-c C-c") 'xmp)))


(add-hook 'robe-mode-hook 'ac-robe-setup)

(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook 'ruby-tools-mode)
(add-hook 'enh-ruby-mode-hook 'ruby-refactor-mode-launch)
(add-hook 'enh-ruby-mode-hook 'rubocop-mode)
(add-hook 'enh-ruby-mode-hook 'flycheck-mode)
(add-hook 'enh-ruby-mode-hook 'robe-mode)
(add-hook 'enh-ruby-mode-hook 'yard-mode)

(custom-set-variables
 '(ruby-refactor-add-parens t)
 '(ruby-refactor-keymap-prefix (kbd "C-c t")))

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")

(require 'chruby)
(chruby "ruby-2.2.2")
