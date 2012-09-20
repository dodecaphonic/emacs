(require 'ruby-electric)
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
	    (imenu-add-to-menubar "IMENU")
	    (ruby-electric-mode t)))

;; Yasnippet workaround for ruby-electric-mode
;; See: http://code.google.com/p/yasnippet/issues/detail?id=71
;; Source: https://gist.github.com/726376
(defun yas/advise-indent-function (function-symbol)
  (eval `(defadvice ,function-symbol (around yas/try-expand-first activate)
           ,(format
             "Try to expand a snippet before point, then call `%s' as usual"
             function-symbol)
           (let ((yas/fallback-behavior nil))
             (unless (and (interactive-p)
                          (yas/expand))
               ad-do-it)))))
(yas/advise-indent-function 'ruby-indent-line)

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")

(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(rvm-use "1.9.3" "default")
