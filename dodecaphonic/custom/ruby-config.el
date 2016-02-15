(require 'yaml-mode)

(defun dodecaphonic-ruby-mode-hook ()
  (set (make-local-variable 'indent-tabs-mode) 'nil)
  (set (make-local-variable 'tab-width) 2)
  (local-set-key (kbd "C-c =") 'dodecaphonic/align=)
  (local-set-key (kbd "C-c C-c") 'xmp)
  (local-set-key (kbd "C-c C-d") 'duplicate-current-line))

(add-hook 'ruby-mode-hook 'dodecaphonic-ruby-mode-hook)

(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(add-hook 'ruby-mode-hook 'ruby-tools-mode)
(add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)
(add-hook 'ruby-mode-hook 'rubocop-mode)
(add-hook 'ruby-mode-hook 'flycheck-mode)
(add-hook 'ruby-mode-hook 'yard-mode)

(custom-set-variables
 '(ruby-refactor-add-parens t)
 '(ruby-refactor-keymap-prefix (kbd "C-c t")))

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")

(require 'chruby)
(chruby "ruby-2.3.0")
