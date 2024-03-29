;; Visuals

;; Find a way to load it with max height and half of screen
;; (set-frame-size (selected-frame) 150 79)
;; (set-frame-position (selected-frame) 1195 0)
(setq inhibit-splash-screen t) ;; Do not show splash screen
(tool-bar-mode -1) ;; Disable toolbar

;; Show line numbers
(setq linum-format "%3d \u2502")
(global-display-line-numbers-mode)

(show-paren-mode) ;; Highlight matching parentheses when the point is on them.

;; (set-frame-position nil 0 0) ;; only notebook
(set-frame-position nil 772 0) ;; work monitor
(set-frame-width nil 248) ;; work monitor

;; home monitor
(if (eq (display-pixel-width) 4352)
    (set-frame-width nil 198))

(add-to-list 'default-frame-alist '(fullscreen . fullheight))

;; Clock in the mode line
(setq display-time-24hr-format t)
(setq display-time-default-load-average nil)
(display-time)

(set-fringe-style 0) ;; left and right spaces
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

(defun my-magit-section-mode-hook ()
  "Custom behaviours for 'magit-section-mode'."
  (whitespace-mode)
  (whitespace-mode))

(add-hook 'magit-section-mode-hook #'my-magit-section-mode-hook)

;; WIP
;; (add-to-list 'initial-frame-alist '(fullscreen . maximized))
;; (set-frame-size (selected-frame) 200 78)
;; (set-frame-height (selected-frame) 75)
;; (set-frame-position (selected-frame) 900 0)
;; (fullheight)
