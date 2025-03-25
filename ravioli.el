(add-to-list 'load-path "~/Projects/personal/emacs-dotfiles/")

(load "defaults")
(load "keybindings")
(load "visuals")
(load "custom")
(load "auto-mode-list")
(load "packages")
(load "tsx-setup")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("79d50c17bfc14337cf30c1e5efde31c3dc68d65aa1e33b77b05444c176e4c33d" "75fb82e748f32de807b3f9e8c72de801fdaeeb73c791f405d8f73711d0710856" default))
 '(package-selected-packages
   '(sql-indent chatgpt-shell copilot astro-ts-mode swift-mode expand-region catppuccin-theme json-navigator graphql-mode prettier dap-mode terraform-mode magit-circleci hideshow-org rust-mode toml-mode go-mode lsp-mode yaml-mode web-mode use-package try tide rjsx-mode restclient rainbow-mode prettier-js php-mode night-owl-theme markdown-mode magit find-file-in-project fill-column-indicator company-quickhelp)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(smerge-markers ((t (:background "grey30" :foreground "gray0"))))
 '(smerge-refined-added ((t (:inherit smerge-refined-change :background "chartreuse3"))))
 '(smerge-refined-removed ((t (:inherit smerge-refined-change :background "red4")))))
