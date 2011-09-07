(require 'coffee-mode)

(add-hook 'js2-mode-hook
          '(lambda ()
             (setq js2-basic-offset 2)
             (local-set-key "\C-x\C-e" 'js-send-last-sexp)
             (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
             (local-set-key "\C-cb" 'js-send-buffer)
             (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
             (local-set-key "\C-cl" 'js-load-file-and-go)))

(defun coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2)
 (setq coffee-debug-mode t)
 (local-set-key "\C-c\C-b" 'coffee-compile-buffer))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
