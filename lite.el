(add-to-list 'load-path "~/Projects/personal/emacs-dotfiles/")
(load "defaults")

;; Visuals
(setq inhibit-splash-screen t) ;; Do not show splash screen
(tool-bar-mode -1) ;; Disable toolbar
(global-linum-mode) ;; Show line numbers
(show-paren-mode) ;; Highlight matching parentheses when the point is on them.
(display-time)
(set-fringe-style -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
;;(setq scroll-step 1)
(set-face-attribute 'default nil :height 150)

;; Show Whitespaces -----------------------------------------------------------
(global-whitespace-mode t)
(setq whitespace-display-mappings
      (quote ((newline-mark ?\n    [?\u00AC ?\n] [?$ ?\n])
              (tab-mark     ?\t    [?\u25B8 ?\t] [?\u00BB ?\t] [?\\ ?\t]))))

(setq whitespace-style
      (quote (face tabs trailing space-before-tab newline
                   indentation space-after-tab tab-mark newline-mark
                   empty)))

(defun mlu ()
  (interactive)
  (forward-line -1)
  (transpose-lines 1)
  (forward-line -2))

(defun mld ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))


(global-set-key (kbd "S-M-<up>") 'mlu)
(global-set-key (kbd "S-M-<down>") 'mld)

;; Key bindings

;; Change meta to apple command key
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'none)

;; Misc
(global-set-key [(control shift c)] 'comment-or-uncomment-region)
(global-set-key "\M-g" 'goto-line)

(global-unset-key "\C-z") ;C-z original desativado
(global-set-key "\C-x\C-z" 'eshell)
(global-set-key [(meta control up)] 'enlarge-window)
(global-set-key [(meta control down)] 'shrink-window)
(global-set-key [(meta shift right)] 'enlarge-window-horizontally)
(global-set-key [(meta shift left)] 'shrink-window-horizontally)

;; Grep dired
(global-set-key [(meta shift f)] 'find-grep-dired)

;; Window
(global-set-key [(shift up)] 'windmove-up)
(global-set-key [(shift left)] 'windmove-left)
(global-set-key [(shift right)] 'windmove-right)
(global-set-key [(shift down)] 'windmove-down)

(global-set-key (kbd "C-n")
                (lambda () (interactive) (next-line 5)))

(global-set-key (kbd "C-p")
                (lambda () (interactive) (previous-line 5)))

(global-set-key "\M-p"  (lambda () (interactive)
                          (previous-line 4)
                          (scroll-down 4)) )
(global-set-key "\M-n"  (lambda () (interactive)
                          (next-line 4)
                          (scroll-up 4)) )

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 5))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 25) ;; keyboard scroll one line at a time
