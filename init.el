;; My emacs setup.
;; Rafael B. Tauil - rafael.tauil.com.br

(setq mydir "~/Projects/emacs-dotfiles/")

(add-to-list 'load-path (file-name-directory (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path
             (concat mydir
                     (convert-standard-filename "lib/")))

(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Thanks to Jim Weirich
(defun msg (msg-text)
  "Write a message to the scratch buffer"
  (interactive "sMessage: ")
  (save-excursion
    (set-buffer (get-buffer-create "*msg*"))
    (goto-char (point-max))
    (insert-string msg-text)
    (insert-string "\n") ))

(load "defaults")
(load "bindings")
(load "eshell-setup")
(load "file-finding")
(load "visuals")
(load "dev")
(load "apps")
