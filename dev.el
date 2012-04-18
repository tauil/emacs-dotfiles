(add-to-list 'load-path
             (concat mydir
                     (convert-standard-filename "../yasnippet/")))
(require 'yasnippet)
(yas/global-mode 1)
(setq yas/snippet-dirs
      (concat mydir
              (convert-standard-filename "snippets")))
(yas/load-directory yas/snippet-dirs)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             (concat mydir
                     (convert-standard-filename "ac-dict")))
(ac-config-default)

(require 'rainbow-mode) ;; For coloring hex codes
