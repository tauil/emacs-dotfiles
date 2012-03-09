(add-to-list 'load-path "~/Projetos/yasnippet")
(require 'yasnippet)
(yas/global-mode 1)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/Projetos/emacs-dotfiles/ac-dict")
(ac-config-default)

(require 'rainbow-mode) ;; For coloring hex codes
