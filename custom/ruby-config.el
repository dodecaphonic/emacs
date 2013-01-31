(require 'yaml-mode)

;; Untabifies ruby file and replaces everything with spaces. Also
;; adds IMENU to bar indicating every function's position.
(add-hook 'ruby-mode-hook
	  (lambda()
	    (add-hook 'local-write-file-hooks
		      '(lambda()
			 (save-excursion
			   (untabify (point-min) (point-max))
			   (delete-trailing-whitespace))))
	    (set (make-local-variable 'indent-tabs-mode) 'nil)
	    (set (make-local-variable 'tab-width) 2)
	    (imenu-add-to-menubar "IMENU")))

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")

(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(rvm-use "1.9.3" "default")
