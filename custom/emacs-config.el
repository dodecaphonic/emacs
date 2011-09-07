;; General emacs configuration
(global-linum-mode t) ;; Show line numbers
(setq debug-on-error t) ;; Always show me what went wrong
(setq menu-bar-mode nil)
(setq frame-title-format "%b - emacs")
(setq-default indent-tabs-mode nil)
(setq transient-mark-mode t)
(setq require-final-newline t)
(setq inhibit-startup-message t)
(global-font-lock-mode t)
(show-paren-mode t)
(column-number-mode t)
(set-face-attribute 'default nil :height 120)
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; Custom keybindings
;;(global-set-key "\C-c\C-a" 'mark-whole-buffer)
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key [f5] 'call-last-kbd-macro)
(global-set-key [f7] 'compile)
(global-set-key [f8] 'gdb)

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

(custom-set-faces
 '(default ((t (:inherit nil :stipple nil :background "#0C1021" :foreground "#F8F8F8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "apple" :family "Inconsolata")))))
(setq mac-command-modifier 'meta)

;; Load my preferred themes
(require 'color-theme)
(color-theme-blackboard)

;; Start server for emacsclient requests
(server-start)

(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching

(linum-mode 1)
(setq linum-format "%d ")

(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; TRAMP
(setq tramp-default-method "ssh")

(add-to-list 'auto-mode-alist '("\\.h$" . c++-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(require 'ido)

;; sets text-mode as the default, instead of fundamental-mode
(setq major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

(set-frame-size-according-to-resolution)

(put 'erase-buffer 'disabled nil)

;; Pretty colors in shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(when (and window-system (eq system-type 'darwin))
  ;; When started from Emacs.app or similar, ensure $PATH
  ;; is the same the user would see in Terminal.app
  (set-exec-path-from-shell-PATH))

;; load my snippets
(yas/load-directory (expand-file-name "~/.emacs.d/snippets"))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(php-mode-force-pear t)
 '(safe-local-variable-values (quote ((encoding . binary)))))


