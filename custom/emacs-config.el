(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" (concat emacs-root ".emacs.d")))))

;; General emacs configuration
(setq debug-on-error t) ;; Always show me what went wrong
(setq-default indent-tabs-mode nil)
(setq transient-mark-mode t)
(setq require-final-newline t)
(setq inhibit-startup-message t)
(global-auto-revert-mode t)
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; Custom keybindings
;;(global-set-key "\C-c\C-a" 'mark-whole-buffer)
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-d" 'duplicate-current-line)
(global-set-key (kbd "C-<backspace>") (lambda ()
                                        (interactive)
                                        (kill-line 0)
                                        (indent-according-to-mode)))
(global-set-key [(meta shift up)] 'move-line-up)
(global-set-key [(meta shift down)] 'move-line-down)

;; Auto-compile .emacs after editing
(defun autocompile nil
  (interactive)
  (require 'bytecomp)
  (if (string= (buffer-file-name)
               (expand-file-name (concat default-directory ".emacs")))
      (byte-compile-file (buffer-file-name))))
(add-hook 'after-save-hook 'autocompile)

;; Insert at current point, mousie, don't drive me crazy!
(setq mouse-yank-at-point t)

(setq mac-command-modifier 'meta)

;; Start server for emacsclient requests
(server-start)

(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(require 'sr-speedbar)

;; sets text-mode as the default, instead of fundamental-mode
(setq major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

(set-frame-size-according-to-resolution)

(put 'erase-buffer 'disabled nil)

;; Pretty colors in shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(windmove-default-keybindings)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(php-mode-force-pear t)
 '(safe-local-variable-values (quote ((encoding . binary)))))
