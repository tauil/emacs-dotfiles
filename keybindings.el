;; Key bindings

;; Misc
(global-set-key [(control shift c)] 'comment-or-uncomment-region)
(global-set-key "\M-g" 'goto-line)

(global-unset-key "\C-z") ;C-z original desativado
(global-set-key "\C-x\C-z" 'eshell)
(global-set-key [(meta control up)] 'enlarge-window)
(global-set-key [(meta control down)] 'shrink-window)
(global-set-key [(meta shift right)] 'enlarge-window-horizontally)
(global-set-key [(meta shift left)] 'shrink-window-horizontally)

;; Grep dired
(global-set-key [(meta shift f)] 'rgrep)

(eval-after-load 'rgrep
  '(progn
     (add-to-list 'grep-find-ignored-directories "dist")
     (add-to-list 'grep-find-ignored-directories "node_modules")
     (add-to-list 'grep-find-ignored-directories ".serverless")
     ))

;; Window
(global-set-key [(shift up)] 'windmove-up)
(global-set-key [(shift left)] 'windmove-left)
(global-set-key [(shift right)] 'windmove-right)
(global-set-key [(shift down)] 'windmove-down)

(global-set-key (kbd "C-n")
                (lambda () (interactive) (next-line 5)))

(global-set-key (kbd "C-p")
                (lambda () (interactive) (previous-line 5)))

(global-set-key "\M-p"  (lambda () (interactive)
                          (previous-line 4)
                          (scroll-down 4)) )
(global-set-key "\M-n"  (lambda () (interactive)
                          (next-line 4)
                          (scroll-up 4)) )

(global-set-key [(control meta a)] 'smerge-keep-all)
(global-set-key [(control meta n)] 'smerge-next)
(global-set-key [(control meta p)] 'smerge-prev)
(global-set-key [(control meta u)] 'smerge-keep-upper)
(global-set-key [(control meta o)] 'smerge-keep-lower)
