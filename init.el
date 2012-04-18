;; My emacs setup.
;; Rafael B. Tauil - rafael.tauil.com.br

(setq mydir "~/Projects/emacs-dotfiles/")

(add-to-list 'load-path (file-name-directory (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path
             (concat mydir
                     (convert-standard-filename "lib/")))

(load "defaults")
(load "bindings")
(load "eshell-setup")
(load "file-finding")
(load "visuals")
(load "dev")
