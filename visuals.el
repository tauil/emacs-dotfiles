(setq inhibit-splash-screen t) ;; Do not show splash screen
(tool-bar-mode -1) ;; Disable toolbar
(global-linum-mode) ;; Show line numbers
(show-paren-mode) ;; Highlight matching parentheses when the point is on them.
(display-time)
(set-fringe-style -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(set-default-font "DejaVu Sans Mono-11")
;; Show Whitespaces -----------------------------------------------------------
(global-whitespace-mode t)
(setq whitespace-display-mappings
      (quote ((newline-mark ?\n    [?\u00AC ?\n] [?$ ?\n])
              (tab-mark     ?\t    [?\u25B8 ?\t] [?\u00BB ?\t] [?\\ ?\t]))))

(setq whitespace-style
      (quote (face tabs trailing space-before-tab newline
                   indentation space-after-tab tab-mark newline-mark
                   empty)))

;;(package-install 'workgroups2)
;;(require 'workgroups2)
;; (setq wg-morph-on nil)
;; (setq wg-prefix-key (kbd "<M-f1>"))
;; (workgroups-mode 1)
;; (wg-load
;;  (concat mydir
;;          (convert-standard-filename "wg-buffers-setup")))

;;(package-install 'autopair)
;;(require 'autopair)

;; Load Color Theme -----------------------------------------------------------
;; (load (concat mydir
;;               (convert-standard-filename "neo-nero-theme")))

(load (concat mydir
              (convert-standard-filename "cherry-blossom-theme")))

(set-frame-parameter (selected-frame) 'alpha '(90 90))
(add-to-list 'default-frame-alist '(alpha 90 90))

(defun set-transparency (onfocus notfocus)
  "Set the transparency for emacs. Values are from 0 - 100"
  (interactive "nOn Focus: \nnOn Unfocus: ")
  (set-frame-parameter (selected-frame) 'alpha (list onfocus notfocus)))

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (blink-cursor-mode -1)
  (global-hl-line-mode) ;; Current line color
  (modify-frame-parameters (selected-frame) '((alpha . 80))) ;; Backgroud transparency
  (global-set-key "\M-m" 'toggle-frame-fullscreen))

;; (require 'uniquify)
;; (setq
;;  uniquify-buffer-name-style 'post-forward
;;  uniquify-separator ":")
