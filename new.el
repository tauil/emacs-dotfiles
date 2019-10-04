(setq mydir "~/Projects/emacs-dotfiles/")

(add-to-list 'load-path (file-name-directory (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path
             (concat mydir
                     (convert-standard-filename "lib/")))

(setq tags-table-list
           '("~/Projects/healthy-workers/backend/"))

(load "defaults")
(load "eshell-setup")

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

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (blink-cursor-mode -1)
  (global-hl-line-mode) ;; Current line color
  (modify-frame-parameters (selected-frame) '((alpha . 95))) ;; Backgroud transparency
  (global-set-key "\M-m" 'toggle-frame-fullscreen)
  ;;(load-theme `clues t)
  (if (string= (system-name) "ravioli.local") (set-frame-position (selected-frame) 1019 0))
  (if (> (x-display-pixel-width) 1280)
      (set-frame-size (selected-frame) 220 68)
    (set-frame-size (selected-frame) 182 60)))

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

;; Packaging system
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode t)

(use-package try
  :ensure t)

(use-package rainbow-mode
  :ensure t)

(use-package find-file-in-project
  :ensure t)
(require 'find-file-in-project)
(setq ffip-prune-patterns `("*/cypress" ,@ffip-prune-patterns))
(setq ffip-prune-patterns `("*/coverage" ,@ffip-prune-patterns))
(setq ffip-prune-patterns `("*/android" ,@ffip-prune-patterns))
(setq ffip-prune-patterns `("*/ios" ,@ffip-prune-patterns))
(global-set-key (kbd "M-t") 'find-file-in-project)

(use-package magit
  :ensure t
  :init (progn
          (global-set-key (kbd "C-x g") 'magit-status)
          (global-set-key (kbd "C-x v") 'magit-log-buffer-file)))

(use-package fill-column-indicator
  :ensure t
  :init (progn
          (setq fci-rule-width 1)
          (setq fci-rule-color "#AE81FF")
          (setq fci-rule-column 120)
          (setq fci-rule-use-dashes 1)
          (setq fci-dash-pattern 0.2)))

(use-package night-owl-theme
  :ensure t)
(load "night-owl-theme")

(use-package rjsx-mode
  :ensure t)

(use-package web-mode
  :ensure t)

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

;; Rename file and buffer
(defun rename-this-buffer-and-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let ((new-name (read-file-name "New name: " filename)))
        (cond ((get-buffer new-name)
               (error "A buffer named '%s' already exists!" new-name))
              (t
               (rename-file filename new-name 1)
               (rename-buffer new-name)
               (set-visited-file-name new-name)
               (set-buffer-modified-p nil)
               (message "File '%s' successfully renamed to '%s'" name (file-name-nondirectory new-name))))))))

(global-set-key (kbd "C-c r") 'rename-this-buffer-and-file)

(defun delete-this-buffer-and-file ()
  "Removes file connected to current buffer and kills buffer."
  (interactive)
  (let ((filename (buffer-file-name))
        (buffer (current-buffer))
        (name (buffer-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (when (yes-or-no-p "Are you sure you want to remove this file? ")
        (delete-file filename)
        (kill-buffer buffer)
        (message "File '%s' successfully removed" filename)))))

(global-set-key (kbd "C-c k") 'delete-this-buffer-and-file)

;; Update path to make sure prettier works
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; Associate modes with file extensions
(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.yml$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.pp$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js\\(on\\)?$" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.xml$" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))
(add-to-list 'auto-mode-alist '("profile" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '(".envrc$" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".env$" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".env.*$" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.js.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css.scss$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.rest$" . restclient-mode))
(add-hook 'js2-jsx-mode-hook 'prettier-js-mode)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(auto-save-interval 0)
 '(auto-save-list-file-prefix nil)
 '(auto-save-timeout 0)
 '(auto-show-mode t t)
 '(delete-auto-save-files nil)
 '(delete-old-versions (quote other))
 '(imenu-auto-rescan t)
 '(imenu-auto-rescan-maxout 500000)
 '(kept-new-versions 5)
 '(kept-old-versions 5)
 '(make-backup-file-name-function (quote ignore))
 '(make-backup-files nil)
 '(mouse-wheel-follow-mouse nil)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (15)))
 '(version-control nil))


;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 5))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 25) ;; keyboard scroll one line at a time

(load "tsx-setup")
