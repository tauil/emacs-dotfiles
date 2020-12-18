;; Visuals

;; Find a way to load it with max height and half of screen
;; (set-frame-size (selected-frame) 150 79)
;; (set-frame-position (selected-frame) 1195 0)
(setq inhibit-splash-screen t) ;; Do not show splash screen
(tool-bar-mode -1) ;; Disable toolbar

;; Show line numbers
(setq linum-format "%3d ")
(global-linum-mode)

(show-paren-mode) ;; Highlight matching parentheses when the point is on them.

;; Clock in the mode line
(setq display-time-24hr-format t)
(setq display-time-default-load-average nil)
(display-time)

(set-fringe-style 5) ;; left and right spaces
(scroll-bar-mode -1) ;; hide scrollbar
(menu-bar-mode -1) ;; hide menubar
;; (setq scroll-step 1
;;       scroll-conservatively  10000)
(set-face-attribute 'default nil :height 150) ;; Change "font size"
(blink-cursor-mode -1)
(global-hl-line-mode) ;; Current line color

;; Whitespace
(setq whitespace-display-mappings
      (quote ((newline-mark ?\n    [?\u00AC ?\n] [?$ ?\n])
              (tab-mark     ?\t    [?\u25B8 ?\t] [?\u00BB ?\t] [?\\ ?\t]))))
(setq whitespace-style
      (quote (face tabs trailing space-before-tab newline
                   indentation space-after-tab tab-mark newline-mark
                   empty)))
(global-whitespace-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(smerge-markers ((t (:background "grey30" :foreground "gray0"))))
 '(smerge-refined-added ((t (:inherit smerge-refined-change :background "chartreuse3"))))
 '(smerge-refined-removed ((t (:inherit smerge-refined-change :background "red4")))))
