;; My emacs setup.
;; Rafael B. Tauil - rafael.tauil.com.br

;; To test
;; (use-package try
;;              :ensure t)

;; (use-package which-key
;;              :ensure t
;;              :config
;;              (which-key-mode))

;; (use-package org-bullets
;;              :ensure t
;;              :config
;;              (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; (setq mydir "~/Projects/emacs-dotfiles/")

;; (add-to-list 'load-path (file-name-directory (or (buffer-file-name) load-file-name)))
;; (add-to-list 'load-path
;;              (concat mydir
;;                      (convert-standard-filename "lib/")))

;; (require 'package)
;; (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                          ("marmalade" . "http://marmalade-repo.org/packages/")
;;                          ("melpa" . "http://melpa.milkbox.net/packages/")))
;; (package-initialize)

;; Thanks to Jim Weirich
(defun msg (msg-text)
  "Write a message to the scratch buffer"
  (interactive "sMessage: ")
  (save-excursion
    (set-buffer (get-buffer-create "*msg*"))
    (goto-char (point-max))
    (insert-string msg-text)
    (insert-string "\n") ))

(load (concat mydir
              (convert-standard-filename "defaults")))
(load (concat mydir
              (convert-standard-filename "bindings")))
(load (concat mydir
              (convert-standard-filename "eshell-setup")))
(load (concat mydir
              (convert-standard-filename "file-finding")))
(load (concat mydir
              (convert-standard-filename "visuals")))
(load (concat mydir
              (convert-standard-filename "dev")))
(load (concat mydir
              (convert-standard-filename "apps")))
