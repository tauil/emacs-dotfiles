;; My emacs setup.
;; Rafael B. Tauil - rafael.tauil.com.br

(add-to-list 'load-path (file-name-directory (or (buffer-file-name) load-file-name)))
(load "defaults")
(load "visuals")
(load "bindings")
(load "eshell-setup")
(load "file-finding")
