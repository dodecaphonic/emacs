(defun dodecaphonic/jest-jump-between-test-and-impl (&optional path)
  (interactive)
  (let*
      ((current-path (or path (buffer-file-name)))
       (current-file-name (file-name-base current-path))
       (current-directory (file-name-directory current-path))
       (extension
        (substring current-path (- (length current-path) 2) (length current-path)))
       (is-test? (string-match "__tests__/" current-path))
       (other-file (if is-test?
                       (replace-regexp-in-string "\\.tests" ""
                                       (replace-regexp-in-string "__tests__/" "" current-path))
                     (concat current-directory "__tests__/" current-file-name ".tests." extension)
                   )))

    (find-file other-file)))
