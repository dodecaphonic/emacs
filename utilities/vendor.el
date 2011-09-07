; for loading libraries in from the vendor directory
; from al3x's emacs configs
; (https://github.com/al3x/emacs/blob/master/utilities/vendor.el)
(defun vendor (library)
  (let* ((file (symbol-name library))
         (normal (concat "~/.emacs.d/vendor/" file))
         (suffix (concat normal ".el")))
    (cond
     ((file-directory-p normal)
      (add-to-list 'load-path normal)
      (require library))
     ((file-directory-p suffix)
      (add-to-list 'load-path suffix)
      (require library))
     ((file-exists-p suffix)
      (require library)))))
