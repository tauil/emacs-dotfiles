(setq mac-command-modifier 'meta) ;; Change meta to apple command key

;; Basic Navigation
(global-set-key [(shift up)] 'windmove-up)
(global-set-key [(shift left)] 'windmove-left)
(global-set-key [(shift right)] 'windmove-right)
(global-set-key [(shift down)] 'windmove-down)

;; Add libs to path -----------------------------------------------------------
(add-to-list 'load-path "~/Projetos/emacs-designer-kit/lib")

(require 'ido)
(ido-mode t)
(require 'zencoding-mode)