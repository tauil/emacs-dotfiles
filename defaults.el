(setq backup-inhibited t) ;; Disable backup
(setq auto-save-default nil) ;; Disable auto save
(setq visible-bell 1) ;; Visual bell instead of annoying bell
(setq create-lockfiles nil) ;; Prevent from creating temporary files while file is not saved which conflict with Ember live reload

(setq-default indent-tabs-mode nil)
(setq c-indent-level 2)
(setq cssm-indent-level 4)
(setq cssm-newline-before-closing-bracket t)
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-mirror-mode nil)
(setq css-indent-offset 2)
(setq js-indent-level 2)
(setq web-mode-markup-indent-offset 2)
(setq typescript-indent-level 2)

;; utf-8 setups
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; Avoid emacs to insert utf8 comment in ruby-mode
(setq ruby-insert-encoding-magic-comment 1)


(defun my-web-mode-hook ()
  "Hooks for Web mode."
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (setq web-mode-code-indent-offset 2)
    (setq web-mode-indent-style 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; (setq js-switch-indent-offset 2)
;; (setq js2-indent-switch-body t)
;; (symbol-value 'js-switch-indent-offset)
