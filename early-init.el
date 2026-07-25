(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

(defvar dodecaphonic--file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)

(setq package-enable-at-startup nil)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold 80000000
                  gc-cons-percentage 0.1)
            (setq file-name-handler-alist dodecaphonic--file-name-handler-alist)))
