;;; ravioli-theme.el --- ravioli
;;; Version: 1.0
;;; Commentary:
;;; A theme called ravioli
;;; Code:

(deftheme ravioli "DOCSTRING for ravioli")
  (custom-theme-set-faces 'ravioli
   '(default ((t (:foreground "#d0c791" :background "#002a61" ))))
   '(cursor ((t (:background "#f0ff00" ))))
   '(fringe ((t (:background "#282828" ))))
   '(mode-line ((t (:foreground "#9fa1ec" :background "#00204b" ))))
   '(region ((t (:background "#504945" ))))
   '(secondary-selection ((t (:background "#3e3834" ))))
   '(font-lock-builtin-face ((t (:foreground "#fe8019" ))))
   '(font-lock-comment-face ((t (:foreground "#52535c" ))))
   '(font-lock-function-name-face ((t (:foreground "#a99865" ))))
   '(font-lock-keyword-face ((t (:foreground "#6bc4ff" ))))
   '(font-lock-string-face ((t (:foreground "#bd792b" ))))
   '(font-lock-type-face ((t (:foreground "#00ecff" ))))
   '(font-lock-constant-face ((t (:foreground "#c35600" ))))
   '(font-lock-variable-name-face ((t (:foreground "#839fa5" ))))
   '(minibuffer-prompt ((t (:foreground "#61acbb" :bold t ))))
   '(font-lock-warning-face ((t (:foreground "red" :bold t ))))
   )

;;;###autoload
(and load-file-name
    (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'ravioli)

;;; ravioli-theme.el ends here
