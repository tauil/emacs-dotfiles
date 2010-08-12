;; This is a simple emacs config file with some lisp scripts that I like to use.

;; I've called emacs-designer-kit cause it's based on emacs-starter-kit but simple. For web designers/front-end developers.

;; Rafael B. Tauil - rafael.tauil.com.br

;; Initial configs
(setq color-theme-is-global t)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Add libs to path -----------------------------------------------------------
(add-to-list 'load-path "~/Projetos/emacs-designer-kit/lib")

;; Show line numbers ----------------------------------------------------------
(require 'linum)
(global-linum-mode 1)

;; Textmate mode --------------------------------------------------------------
(require 'textmate)
(textmate-mode)

;; Interactively Do Things ----------------------------------------------------
(require 'ido)
(ido-mode t)

;; Code auto-complete ---------------------------------------------------------
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(load-file "~/Projetos/yasnippet/yasnippet.el")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/Projetos/yasnippet/snippets")
`
;; Aquamacs setup -------------------------------------------------------------
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 190 t)
 '(default-frame-alist (quote ((tool-bar-lines . 0) (menu-bar-lines . 1) (cursor-type . box) (vertical-scroll-bars . right) (internal-border-width . 0) (left-fringe . 1) (right-fringe) (fringe) (background-color . "black") (background-mode . dark) (border-color . "black") (cursor-color . "#FF9900") (foreground-color . "#CCCCCC") (mouse-color . "sienna1"))))
 '(indent-tabs-mode nil)
 '(setq standard-indent)
 '(tab-width 2)
 '(tabbar-mode nil nil (tabbar))
 '(transient-mark-mode t))
 
;; Load Color Theme -----------------------------------------------------------
(add-to-list 'load-path "~/Projetos/emacs-designer-kit/color-theme/")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))

;; Load Schwarz Color Theme ---------------------------------------------------
(color-theme-schwarz)
(load-file "~/Projetos/emacs-designer-kit/color-theme/themes/color-theme-schwarz.el")

;; Backgroud transparency and current line color ------------------------------
(modify-frame-parameters (selected-frame) '((alpha . 85)))
(global-hl-line-mode 1)
(set-face-background 'hl-line "#333")

;;  Misc ----------------------------------------------------------------------
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (blink-cursor-mode -1))

;; Do not show splash screen
(setq inhibit-splash-screen t)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; You really don't need this; trust me.
(menu-bar-mode 1)

;; Save a list of recent files visited.
(recentf-mode 1)

;; Associate modes with file extensions

(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
;;(setq auto-mode-alist (cons '("\\.css\\'" . css-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js\\(on\\)?$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.xml$" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 190 t)
 '(default-frame-alist (quote ((tool-bar-lines . 0) (menu-bar-lines . 1) (cursor-type . box) (vertical-scroll-bars . right) (internal-border-width . 0) (left-fringe . 1) (right-fringe) (fringe) (background-color . "black") (background-mode . dark) (border-color . "black") (cursor-color . "#FF9900") (foreground-color . "#CCCCCC") (mouse-color . "sienna1"))))
 '(global-hl-line-mode t)
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
