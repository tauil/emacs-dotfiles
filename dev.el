(if (require 'yasnippet nil 'noerror)
    (message "Yasnippet já instalado!")
  (package-install 'yasnippet))

(require 'yasnippet)
(yas/global-mode 1)
(setq yas/snippet-dirs
      (concat mydir
              (convert-standard-filename "snippets")))
(yas/load-directory yas/snippet-dirs)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             (concat mydir
                     (convert-standard-filename "ac-dict")))
(ac-config-default)

;; For coloring hex codes
(if (require 'rainbow-mode nil 'noerror)
    (message "rainbow-mode já instalado!")
  (package-install 'rainbow-mode))

(require 'rainbow-mode)

(if (require 'haml-mode nil 'noerror)
    (message "haml-mode já instalado!")
  (package-install 'rainbow-mode))

(require 'haml-mode)
(add-hook 'haml-mode-hook
               (lambda ()
                 (setq indent-tabs-mode nil)
                 (define-key haml-mode-map "\C-m" 'newline-and-indent)))

(if (require 'sass-mode nil 'noerror)
    (message "sass-mode já instalado!")
  (package-install 'sass-mode))

(require 'sass-mode)

;; Associate modes with file extensions
(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.yml$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js\\(on\\)?$" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.xml$" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(add-to-list 'auto-mode-alist '("profile" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
