(setq inhibit-splash-screen t) ;; Do not show splash screen
(tool-bar-mode -1) ;; Disable toolbar
(global-linum-mode) ;; Show line numbers
(show-paren-mode) ;; Highlight matching parentheses when the point is on them.
(display-time)
(blink-cursor-mode -1)
(set-fringe-style -1)
(scroll-bar-mode -1)
(global-hl-line-mode) ;; Current line color

;;Show whitespace
(global-whitespace-mode t)
(setq whitespace-display-mappings
      (quote ((newline-mark ?\n    [?\u00AC ?\n] [?$ ?\n])
              (tab-mark     ?\t    [?\u25B8 ?\t] [?\u00BB ?\t] [?\\ ?\t]))))

(setq whitespace-style
      (quote (face tabs trailing space-before-tab newline
                   indentation space-after-tab tab-mark newline-mark
                   empty)))

;; Load Color Theme -----------------------------------------------------------
(add-to-list 'load-path "~/Projetos/emacs-dotfiles/color-theme")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))

;; Load my favorite theme ------------------------------------------------------
(color-theme-nero)
(modify-frame-parameters (selected-frame) '((alpha . 85))) ;; Backgroud transparency
