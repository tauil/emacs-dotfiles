;; This is a simple emacs config file with some lisp scripts that I like to use.

;; I've called emacs-designer-kit cause it's based on emacs-starter-kit but simple. For web designers/front-end developers.

;; Rafael B. Tauil - rafael.tauil.com.br

;; Initial configs
(setq color-theme-is-global t)
(prefer-coding-system 'utf-8) ;; utf-8 setups
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(setq mac-command-modifier 'meta) ;; Change meta to apple command key
(setq mac-option-modifier 'none)
(setq-default indent-tabs-mode nil)
(setq c-indent-level 2)
(setq cssm-indent-level 2)
(setq cssm-newline-before-closing-bracket t)
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-mirror-mode nil)
(setq backup-inhibited t) ;; Disable backup
(setq auto-save-default nil) ;; Disable auto save
(show-paren-mode 1) ;; Highlight matching parentheses when the point is on them.
(menu-bar-mode 1) ;; You really don't need this; trust me.
(recentf-mode 1) ;; Save a list of recent files visited.
(setq inhibit-splash-screen t) ;; Do not show splash screen
(setq display-time-day-and-date t) (display-time) ;; Make the display of date and time persistent.
(require 'linum) ;; Show line numbers
(global-linum-mode 1)

(defun fullscreen ()
  (interactive)
  (ns-toggle-fullscreen))
(global-set-key "\M-m" 'fullscreen)

;; Add libs to path -----------------------------------------------------------
(add-to-list 'load-path "~/Projetos/emacs-designer-kit/lib")

;; Add haml-mode
(require 'haml-mode)

;; Add rvm  -------------------------------------------------------------------
(require 'rvm)
(rvm-use-default) ;; use rvm’s default ruby for the current Emacs session

;; Textmate mode --------------------------------------------------------------
;;(require 'textmate)
;;(textmate-mode)

;; Interactively Do Things ----------------------------------------------------
(require 'ido)
(ido-mode t)

;; Code auto-complete ---------------------------------------------------------
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(load-file "~/Projetos/yasnippet/yasnippet.el")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/Projetos/yasnippet/snippets")

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

(modify-frame-parameters (selected-frame) '((alpha . 85))) ;; Backgroud transparency
(global-hl-line-mode 1) ;; Current line color
(set-face-background 'hl-line "#333")

;;  Misc ----------------------------------------------------------------------
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (blink-cursor-mode -1))

;; Associate modes with file extensions
(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js\\(on\\)?$" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.xml$" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("profile" . shell-script-mode))