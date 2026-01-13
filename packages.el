(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; (use-package night-owl-theme
;;   :ensure t
;;   :init (progn
;;           (load "night-owl-theme")))

(use-package catppuccin-theme
  :ensure t
  :init (progn
          (load "catppuccin-theme")))

(use-package find-file-in-project
  :ensure t
  :init (progn
          (require 'find-file-in-project)
          (setq ffip-prune-patterns `("*/cypress" ,@ffip-prune-patterns))
          (setq ffip-prune-patterns `("*/coverage-*" ,@ffip-prune-patterns))
          (setq ffip-prune-patterns `("*/dist" ,@ffip-prune-patterns))
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

(use-package expand-region
  :bind ("C-=" . er/expand-region))

(use-package sql-indent
  :ensure t)

(use-package yaml-mode
  :mode "\\.ya?ml\\'"
  :hook (yaml-mode . highlight-indent-guides-mode))

(use-package highlight-indent-guides
  :hook (yaml-mode . highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-method 'character))

(custom-set-faces
 '(highlight-indent-guides-character-face ((t (:foreground "#5e4f70" :slant normal)))))

;; #B899DE
;; #5e4f70

(use-package ob-mermaid
  :ensure t
  :config
  (setq ob-mermaid-cli-path "~/.nvm/versions/node/v20.18.0/bin/mmdc"))  ;; Adjust path as needed

(use-package ob-mermaid
  :ensure t
  :config
  (setq ob-mermaid-cli-path "~/.nvm/versions/node/v20.18.0/bin/mmdc")
  (setq org-babel-default-header-args:mermaid
        '((:results . "file")
          (:exports . "results")
          (:file-ext . "png")
          (:cmdline . "--backgroundColor transparent -t dark"))))

(setq org-confirm-babel-evaluate
      (lambda (lang body)
        (not (member lang '("mermaid" "plantuml" "dot")))))

(add-hook 'org-babel-after-execute-hook #'org-redisplay-inline-images)


(org-babel-do-load-languages
 'org-babel-load-languages
 '((mermaid . t)))
