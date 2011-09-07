;;; palavrorio.el --- Palavrório Emacs integration

;; Copyright (C) 2009 Vitor Peres Capela Pereira
;; Author: Vitor Peres Capela Pereira <dodecaphonic@gmail.com>
;; Version: 0.1
;; Keywords: dictionaries

(require 'json)

(setq palavrorio-url "http://palavrorio.net/busca/")
(setq palavrorio-retrieval-program "curl -s -S %s")

;;;###autoload
(defun palavrorio-define-word-at-point ()
  "Takes word at current insertion point and retrieves its definition."
  (interactive)
  (setq word-to-define (thing-at-point 'word))
  (palavrorio-show-definition word-to-define))

;;;###autoload
(defun palavrorio-define-word (min max word-to-define)
  "Takes word in the minibuffer as the parameter and retrieves its definition."
  (interactive "r \nsWord: ")
  (palavrorio-show-definition word-to-define))

(defun palavrorio-show-word-option-list (word opts)
  (insert (format "There are %s options for '%s'. " (length opts) word))
  (insert "Type the number of the option you wish to define.")
  ;;(interactive "P\nsWord number: ")
  (message (format "%d definition(s) for %s" (length database-word) word)))

(defun palavrorio-show-definition (word)
  (setq database-word (palavrorio-get-definition-json word))
  (with-current-buffer (get-buffer-create " *palavrorio-definition*")
    (erase-buffer)
    (cond
     ((null database-word)
      (message (format "No definition for word %s" word)))
     ((arrayp database-word)
      (palavrorio-show-word-option-list (word database-word)))
     (t (insert (cdar database-word))
        (switch-to-buffer-other-window (current-buffer))
        (goto-char (point-min))))))
  
(defun palavrorio-get-definition-json (word)
  (setq word-url (concat palavrorio-url word ".json"))
  (json-read-from-string
   (shell-command-to-string (format palavrorio-retrieval-program word-url))))

(provide 'palavrorio)
