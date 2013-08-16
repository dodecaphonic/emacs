;; Ruby
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

;; YAML
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; Markdown
(add-to-list 'auto-mode-alist '("\\.md$" . html-mode))

;; HTML
(add-to-list 'auto-mode-alist '("\\html.erb$" . html-mode))

;; CSS
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.less$" . css-mode))

;; Scala
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
(add-to-list 'auto-mode-alist '("\\.sc$" . scala-mode))

;; C/C++
(add-to-list 'auto-mode-alist '("\\.h$" . c++-mode))
