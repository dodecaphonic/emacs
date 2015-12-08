(require 'yaml-mode)

(defun dodecaphonic-ruby-mode-hook ()
  (set (make-local-variable 'indent-tabs-mode) 'nil)
  (set (make-local-variable 'tab-width) 2)
  (setq enh-ruby-bounce-deep-indent t)
  (setq enh-ruby-hanging-brace-indent-level 2)
  (local-set-key (kbd "C-c =") 'dodecaphonic/align=)
  (local-set-key (kbd "C-c C-c") 'xmp)
  (local-set-key (kbd "C-c C-d") 'duplicate-current-line))

(add-hook 'enh-ruby-mode-hook 'dodecaphonic-ruby-mode-hook)

(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook 'ruby-tools-mode)
(add-hook 'enh-ruby-mode-hook 'ruby-refactor-mode-launch)
(add-hook 'enh-ruby-mode-hook 'rubocop-mode)
(add-hook 'enh-ruby-mode-hook 'flycheck-mode)
(add-hook 'enh-ruby-mode-hook 'yard-mode)

(custom-set-variables
 '(ruby-refactor-add-parens t)
 '(ruby-refactor-keymap-prefix (kbd "C-c t")))

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")

(require 'chruby)
(chruby "ruby-2.2.3")
