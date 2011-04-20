;; This is a simple emacs config file with some lisp scripts that I like to use.

;; I've called emacs-designer-kit cause it's based on emacs-starter-kit but simple.

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
(scroll-bar-mode nil)
(setq-default mode-line-buffer-identification (propertized-buffer-identification "%20f"))  ;; Add full path to file name

; show env var named path
(getenv "~/.profile")

;; Add libs to path -----------------------------------------------------------
(add-to-list 'load-path "~/Projetos/emacs-designer-kit/lib")

(require 'workgroups)
(setq wg-morph-on nil)
(setq wg-prefix-key (kbd "<M-f1>")) 
(workgroups-mode 1)
(wg-load "~/Projetos/emacs-designer-kit/wg-buffers-setup")

(require 'rainbow-mode) ;; For coloring hex codes
(require 'multi-term)

(require 'bm) 
(require 'bookmark-add) 

(require 'linum) ;; Show line numbers
(global-linum-mode 1)

;; Automaticaly pair braces
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers 

;; Add haml-mode
(require 'haml-mode)

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

;; Load Color Theme -----------------------------------------------------------
(add-to-list 'load-path "~/Projetos/emacs-designer-kit/color-theme/")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))

;; Load my favorite theme ------------------------------------------------------
(color-theme-nero)

(modify-frame-parameters (selected-frame) '((alpha . 85))) ;; Backgroud transparency
(global-hl-line-mode 1) ;; Current line color

;;  Misc -----------------------------------------------------------------------
(when window-system
  ;; (setq frame-title-forma0t '(buffer-file-name "%f" ("%b")))
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (blink-cursor-mode -1))

;; Other keybinds
(global-set-key [(control shift c)] 'comment-or-uncomment-region)
(global-set-key "\M-g" 'goto-line)
(defun fullscreen ()
  (interactive)
  (ns-toggle-fullscreen))
(fullscreen)
(global-set-key "\M-m" 'fullscreen)

(global-unset-key "\C-z") ;C-z original desativado
(global-set-key "\C-z\C-x" 'term) ;C-zC-x: abre um shell no term-mode (superior ao shell-mode: identico a terminal comum)

;; Bookmark lines
(global-set-key (kbd "<f2>") 'bm-toggle)
(global-set-key (kbd "<C-f2>") 'bm-next)
(global-set-key (kbd "<M-f2>") 'bm-previous)

;; Textmate minor-mode keybinds
(global-set-key [(meta shift t)] 'textmate-goto-file)
(global-set-key [(meta shift d)] 'textmate-goto-symbol)
(global-set-key [(meta up)] 'textmate-column-up)
(global-set-key [(meta down)] 'textmate-column-down)
(global-set-key [(meta shift up)] 'textmate-column-up-with-select)
(global-set-key [(meta shift down)] 'textmate-column-down-with-select)

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