(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package night-owl-theme
  :ensure t
  :init (progn
          (load "night-owl-theme")))

(use-package find-file-in-project
  :ensure t
  :init (progn
          (require 'find-file-in-project)
          (setq ffip-prune-patterns `("*/cypress" ,@ffip-prune-patterns))
          (setq ffip-prune-patterns `("*/coverage" ,@ffip-prune-patterns))
          (setq ffip-prune-patterns `("*/android" ,@ffip-prune-patterns))
          (setq ffip-prune-patterns `("*/ios" ,@ffip-prune-patterns))
          (setq ffip-prefer-ido-mode t)
          (global-set-key (kbd "M-t") 'find-file-in-project)))

(use-package magit
  :ensure t
  :init (progn
          (global-set-key (kbd "C-x g") 'magit-status)
          (global-set-key (kbd "C-x v") 'magit-log-buffer-file)))

;; Dev

(use-package rjsx-mode
  :ensure t)

(use-package web-mode
  :ensure t)

(use-package yaml-mode
  :ensure t)

(use-package rainbow-mode
  :ensure t)
