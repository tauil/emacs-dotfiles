;; This is a simple emacs config file with some lisp scripts that I like to use.

;; I've called emacs-designer-kit cause it's based on emacs-starter-kit but simple. For web designers/front-end developers.

;; Rafael B. Tauil - rafael.tauil.com.br

;; Show line numbers ----------------------------------------------------------
(load-file "~/_ProjetosGit/emacs-designer-kit/linum.el")
(require 'linum)
(global-linum-mode 1)

;; Code auto-complete ---------------------------------------------------------
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
;(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode) auto-mode-alist))
(load-file "~/_ProjetosGit/yasnippet/yasnippet.el")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/_ProjetosGit/yasnippet/snippets")

;; Tab setup ------------------------------------------------------------------
(custom-set-variables
 '(tab-width 2)
 '(indent-tabs-mode nil)
 '(setq standard-indent 2))

;; Interactively Do Things ----------------------------------------------------
(require 'ido)
(ido-mode t)
 
;; Load Schwarz Color Theme ---------------------------------------------------
(load-file "~/_ProjetosGit/emacs-designer-kit/schwarz.el")

;;  Misc ----------------------------------------------------------------------
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (blink-cursor-mode -1))

;; Do not show splash screen
(inhibit-splash-screen nil)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; You really don't need this; trust me.
(menu-bar-mode 1)

;; Save a list of recent files visited.
(recentf-mode 1)

;; Associate modes with file extensions

(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js\\(on\\)?$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.xml$" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . html-mode))
