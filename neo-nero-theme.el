;;; neo-nero-theme.el --- REQUIRES EMACS 24: Neo-Nero Color Theme for Emacs.

;; Copyright (C) 2014 Rafael B. Tauil.
;;
;; Author: Rafael B. Tauil <rafael@tauil.com.br>
;; URL: https://github.com/tauil/emacs-dotfiles/neo-nero-theme.el
;; Version: 0.0.1
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, version 3 of the License.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.

(unless (>= 24 emacs-major-version)
  (error "neo-nero-theme requires Emacs 24 or later."))

(deftheme neo-nero
  "Neo-Nero color theme")

(let ((neo-nero-blue-light "#89BDFF")
      (neo-nero-gray "#595959")
      (neo-nero-gray-darker "#383830")
      (neo-nero-gray-darkest "#141411")
      (neo-nero-gray-lightest "#595959")
      (neo-nero-gray-light "#E6E6E6")
      (neo-nero-green "#A6E22A")
      (neo-nero-green-light "#A6E22E")
      (neo-nero-grey-dark "#272822")
      (neo-nero-magenta "#64B4FB")
      (neo-nero-purple "#AE81FF")
      (neo-nero-purple-light "#C9C3E6")
      (neo-nero-yellow "#E6DB74")
      (neo-nero-yellow-dark "#75715E")
      (neo-nero-yellow-light "#F8F8F2"))
  (custom-theme-set-faces
   'neo-nero
   ;; Frame
   `(default ((t (:foreground ,neo-nero-yellow-light :background ,neo-nero-grey-dark))))
   `(cursor ((t (:foreground ,neo-nero-magenta))))
   `(hl-line ((t (:background ,neo-nero-gray-darkest))))
   `(minibuffer-prompt ((t (:foreground ,neo-nero-yellow-dark))))
   `(modeline ((t (:background ,neo-nero-gray-lightest :foreground ,neo-nero-gray-light))))
   `(region ((t (:background ,neo-nero-gray-darker))))
   `(show-paren-match-face ((t (:background ,neo-nero-gray-lightest))))
   ;; Main
   `(font-lock-builtin-face ((t (:foreground ,neo-nero-green))))
   `(font-lock-comment-face ((t (:foreground ,neo-nero-yellow-dark))))
   `(font-lock-constant-face ((t (:foreground ,neo-nero-purple))))
   `(font-lock-doc-string-face ((t (:foreground ,neo-nero-yellow))))
   `(font-lock-function-name-face ((t (:foreground ,neo-nero-green))))
   `(font-lock-keyword-face ((t (:foreground ,neo-nero-magenta))))
   `(font-lock-string-face ((t (:foreground ,neo-nero-yellow))))
   `(font-lock-type-face ((t (:foreground ,neo-nero-blue-light))))
   `(font-lock-variable-name-face ((t (:foreground ,neo-nero-magenta))))
   `(font-lock-warning-face ((t (:bold t :foreground ,neo-nero-purple-light))))
   ;; CUA
   `(cua-rectangle ((t (:background ,neo-nero-gray-darkest))))
   ;; IDO
   `(ido-first-match ((t (:foreground ,neo-nero-purple))))
   `(ido-only-match ((t (:foreground ,neo-nero-green))))
   `(ido-subdir ((t (:foreground ,neo-nero-blue-light))))
   ;; Whitespace
   `(whitespace-space ((t (:foreground ,neo-nero-gray))))
   ;; Yasnippet
   `(yas/field-highlight-face ((t (:background ,neo-nero-gray-darker))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background "nil")))))))

(provide-theme 'neo-nero)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; neo-nero-theme.el ends here
