(add-to-list 'load-path "~/Projects/emacs-dotfiles/")

(load "defaults")
(load "keybindings")
(load "visuals")
(load "custom")
(load "auto-mode-list")
(load "packages")
(load "tsx-setup")

(custom-set-variables
 '(package-selected-packages
   '(prettier dap-mode terraform-mode magit-circleci hideshow-org rust-mode toml-mode go-mode lsp-mode yaml-mode web-mode use-package try tide rjsx-mode restclient rainbow-mode prettier-js php-mode night-owl-theme markdown-mode magit find-file-in-project fill-column-indicator company-quickhelp)))

(custom-set-faces
 '(smerge-markers ((t (:background "grey30" :foreground "gray0"))))
 '(smerge-refined-added ((t (:inherit smerge-refined-change :background "chartreuse3"))))
 '(smerge-refined-removed ((t (:inherit smerge-refined-change :background "red4")))))
