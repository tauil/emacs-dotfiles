;; Twilight Colour Theme for Emacs.
;;
;; Defines a colour scheme resembling that of the original TextMate Twilight colour theme.
;; To use add the following to your .emacs file (requires the color-theme package):
;;
;; (require 'color-theme)
;; (color-theme-initialize)
;; (load-file "~/.emacs.d/twilight-emacs/color-theme-twilight.el")
;;
;; And then (color-theme-twilight) to activate it.
;;
;; Several areas still require improvement such as recognition of code that ruby-mode doesn't
;; yet pick up (eg. parent classes), Rails/Merb keywords, or non Ruby code related areas
;; (eg. dired, HTML, etc). Please feel free to customize further and send in any improvements,
;; patches most welcome.
;;
;; MIT License Copyright (c) 2008 Marcus Crafter <crafterm@redartisan.com>
;; Credits due to the excellent TextMate Twilight theme

(require 'color-theme)

;;;###autoload
(defun color-theme-schwarz ()
  "Color theme by Rafael B. Tauil, based off the emacs Twilight theme, created 2009-05-10"
  (interactive)
  (color-theme-install
   '(color-theme-schwarz
     ((background-color . "black")
      (background-mode . dark)
      (border-color . "black")
      (cursor-color . "#FF9900")
      (foreground-color . "#CCCCCC")
      (mouse-color . "sienna1"))
     (default ((t (:background "black" :foreground "white"))))
     (blue ((t (:foreground "blue"))))
     (bold ((t (:bold t))))
     (bold-italic ((t (:bold t))))
     (border-glyph ((t (nil))))
     (buffers-tab ((t (:background "black" :foreground "white"))))
     (font-lock-builtin-face ((t (:foreground "#A283FF"))))
     (font-lock-comment-face ((t (:foreground "#8A8A8A"))))
     (font-lock-constant-face ((t (:foreground "#CF6A4C"))))
     (font-lock-doc-string-face ((t (:foreground "DarkOrange"))))
     (font-lock-function-name-face ((t (:foreground "#FFAA00"))))
     (font-lock-keyword-face ((t (:foreground "#CDA869"))))
     (font-lock-preprocessor-face ((t ((:foreground "#FF0000")))))
     (font-lock-reference-face ((t (:foreground "SlateBlue"))))
 
     (font-lock-regexp-grouping-backslash ((t (:foreground "#E9C062"))))
     (font-lock-regexp-grouping-construct ((t (:foreground "red"))))
 
     (font-lock-string-face ((t (:foreground "#90D0FF"))))
     (font-lock-type-face ((t (:foreground "#9B703F"))))
     (font-lock-variable-name-face ((t (:foreground "#80AEFF"))))
     (font-lock-warning-face ((t (:bold t :foreground "Pink"))))
     (gui-element ((t (:background "#303030" :foreground "black"))))
     (region ((t (:background "#714400"))))
     (mode-line ((t (:background "#Red" :foreground "#FFFFFF"))))
     (highlight ((t (:background "#392200"))))
     (highline-face ((t (:background "SeaGreen"))))
     (italic ((t (nil))))
     (left-margin ((t (nil))))
     (text-cursor ((t (:background "yellow" :foreground "black"))))
     (toolbar ((t (nil))))
     (underline ((nil (:underline nil))))
     (zmacs-region ((t (:background "snow" :foreground "ble")))))))

(color-theme-schwarz)