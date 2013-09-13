(require 'yaml-mode)

(add-hook 'ruby-mode-hook
	  (lambda()
	    (add-hook 'local-write-file-hooks
		      '(lambda()
			 (save-excursion
			   (untabify (point-min) (point-max))
			   (delete-trailing-whitespace))))
	    (set (make-local-variable 'indent-tabs-mode) 'nil)
	    (set (make-local-variable 'tab-width) 2)
            (local-set-key (kbd "C-c =") 'dodecaphonic/align=)
            (local-set-key (kbd "C-c C-c") 'xmp)))

(add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)
(custom-set-variables 
 '(ruby-refactor-add-parens t)
 '(ruby-refactor-keymap-prefix (kbd "C-c t")))

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")

(rvm-use "2.0.0" "default")
