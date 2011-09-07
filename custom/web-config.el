(require 'php-mode)

(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))

;; Make working with PHP a little more palatable
(load (expand-file-name "~/.emacs.d/vendor/nxhtml/autostart.el"))
(add-hook 'php-mode-hook
          (lambda ()
            (setq c-basic-offset 4)))
            
(add-to-list 'auto-mode-alist '("\\.ctp$" . nxhtml-mumamo-mode))
