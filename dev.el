(add-to-list 'load-path "~/Projetos/yasnippet")
(require 'yasnippet)
(yas/global-mode 1)
(setq yas/snippet-dirs "~/Projetos/emacs-dotfiles/snippets")
(yas/load-directory yas/snippet-dirs)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/Projetos/emacs-dotfiles/ac-dict")
(ac-config-default)

(require 'rainbow-mode) ;; For coloring hex codes
