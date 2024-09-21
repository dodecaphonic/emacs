;;; llms-config.el --- Interacting with LLMs within Emacs
;;; Commentary:
;;; Code:

(defun trim-whitespace (string)
  "Remove leading and trailing whitespace from STRING."
  (replace-regexp-in-string "\\`\\s-+\\|\\s-+\\'" "" string))

(defun read-api-key-from-file (file-path)
  "Read an API key from FILE-PATH."
  (with-temp-buffer
    (insert-file-contents file-path)
    (trim-whitespace (buffer-string))))

(use-package gptel
  :ensure t
  :config
  (setq gptel-model "claude-3-5-sonnet-20240620-v1:0")
  (setq gptel-backend (gptel-make-anthropic "Claude"
                 :stream t :key (read-api-key-from-file "~/.config/anthropic-claude.key"))))

(provide 'llms-config)
;;; llms-config.el ends here
