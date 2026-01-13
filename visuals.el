;; Visuals

(setq inhibit-splash-screen t) ;; Do not show splash screen
(tool-bar-mode -1) ;; Disable toolbar

;; Show line numbers
(setq linum-format "%3d \u2502")
(global-display-line-numbers-mode)

(show-paren-mode) ;; Highlight matching parentheses when the point is on them.

(defun window-size-home ()
  "Set emacs frame size for home monitor"
  (interactive)
  (toggle-frame-maximized) ;; hack until I find how to set fullheight in another way than the one at the bottom
  ;;(add-to-list 'initial-frame-alist '(fullscreen . fullheight))
  (set-frame-position nil 700 0)
  (set-frame-width nil 206)
  (message "Welcome home, master."))

(defun window-size-office ()
  "Set emacs frame size for home monitor"
  (interactive)
  (set-frame-position nil 772 0)
  (set-frame-width nil 248)
  (add-to-list 'initial-frame-alist '(fullscreen . fullheight))
  (message "At least there's free coffee here."))

;; home monitor
(when (eq (display-pixel-width) 4000)
  (window-size-home))

;; note monitor
(when (eq (display-pixel-width) 1512)
  (add-to-list 'initial-frame-alist '(fullscreen . maximized)))

;; work monitor
(when (eq (display-pixel-width) 4520)
  (window-size-office))

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
(global-hl-line-mode) ;; Current line highlight            
;; (set-face-background 'hl-line "midnight blue")

;; Whitespace
(setq whitespace-display-mappings
      (quote ((newline-mark ?\n    [?\u00AC ?\n] [?$ ?\n])
              (tab-mark     ?\t    [?\u25B8 ?\t] [?\u00BB ?\t] [?\\ ?\t])
              (space-mark 32 [183] [46]))))

;; WIP Test
;; (faces '(
;;          (whitespace-big-indent :foreground ,"#FF0000")
;;          (whitespace-empty :inherit warning)
;;          (whitespace-hspace :background ,undef :foreground ,undef)
;;          (whitespace-indentation :foreground ,ctp-surface0)
;;          (whitespace-line :underline (:style wave :color ,ctp-mauve))
;;          (whitespace-newline :inherit font-lock-comment-face)
;;          (whitespace-space :inherit font-lock-comment-face)
;;          (whitespace-space-after-tab :inherit warning)
;;          (whitespace-space-before-tab :inherit warning)
;;          (whitespace-tab :inherit whitespace-newline)
;;          (whitespace-trailing :inherit trailing-whitespace)
;;          (trailing-whitespace :foreground ,ctp-peach :background ,ctp-peach))


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

(setq ediff-split-window-function 'split-window-horizontally)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
