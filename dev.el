;; (package-install 'yasnippet)
;; (require 'yasnippet)
;; (yas/global-mode 1)
;; (setq yas/snippet-dirs
;;       (concat mydir
;;               (convert-standard-filename "snippets")))
;; (yas/load-directory yas/snippet-dirs)

(package-install 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             (concat mydir
                     (convert-standard-filename "ac-dict")))
(ac-config-default)

;; For coloring hex codes
(package-install 'rainbow-mode)
(require 'rainbow-mode)

(package-install 'haml-mode)
(require 'haml-mode)
(add-hook 'haml-mode-hook
               (lambda ()
                 (setq indent-tabs-mode nil)
                 (define-key haml-mode-map "\C-m" 'newline-and-indent)))

(package-install 'web-mode)
(package-install 'typescript)

(package-install 'sass-mode)
(require 'sass-mode)

;; (package-install 'fill-column-indicator)
;; (require 'fill-column-indicator)
(setq fci-rule-width 1)
(setq fci-rule-color "#AE81FF")
(setq fci-rule-column 120)
(setq fci-rule-use-dashes 1)
(setq fci-dash-pattern 0.2)

;; Automaticaly close ruby blocks
;; (package-install 'ruby-end)
;; (require 'ruby-end)

;; Some useful hooks for Ruby development. More info at: https://github.com/rejeep/ruby-tools.el
;; (package-install 'ruby-tools)
;; (require 'ruby-tools)

(package-install 'magit)
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x v") 'magit-log-buffer-file)

;; Associate modes with file extensions
(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.yml$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.pp$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js\\(on\\)?$" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.xml$" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(add-to-list 'auto-mode-alist '("profile" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '(".envrc$" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".env$" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.js.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css.scss$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.php$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
