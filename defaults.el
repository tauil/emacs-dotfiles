(setq backup-inhibited t) ;; Disable backup
(setq auto-save-default nil) ;; Disable auto save

(setq-default indent-tabs-mode nil)
(setq c-indent-level 2)
(setq cssm-indent-level 2)
(setq cssm-newline-before-closing-bracket t)
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-mirror-mode nil)

;; utf-8 setups
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
