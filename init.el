;; My emacs setup.
;; Rafael B. Tauil - rafael.tauil.com.br

(add-to-list 'load-path (file-name-directory (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path "~/Projetos/emacs-dotfiles/lib")

(load "defaults")
(load "visuals")
(load "bindings")
(load "eshell-setup")
(load "file-finding")
(load "dev")
