(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(require 'iso-transl)

(setq transient-mark-mode t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-d" 'duplicate-current-line)
(global-set-key (kbd "C-<backspace>") (lambda ()
                                        (interactive)
                                        (kill-line 0)
                                        (indent-according-to-mode)))
(global-set-key [(meta shift up)] 'move-line-up)
(global-set-key [(meta shift down)] 'move-line-down)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-word-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-word-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-words-like-this)
(global-set-key (kbd "C-c C-{") 'mc/edit-lines)
(global-set-key (kbd "<RET>") 'electric-indent-just-newline)
(global-set-key (kbd "C-j") 'newline)
(global-set-key (kbd "C-x a r") 'align-regexp)

(electric-pair-mode t)
(electric-indent-mode t)
(setq mouse-yank-at-point t)
(setq mac-command-modifier 'meta)

(use-package company
  :commands company-mode
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(provide 'input)
