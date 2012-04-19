;; Change meta to apple command key
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'none)

;; Misc
(global-set-key [(control shift c)] 'comment-or-uncomment-region)
(global-set-key "\M-g" 'goto-line)

(global-unset-key "\C-z") ;C-z original desativado
(global-set-key "\C-x\C-z" 'eshell)
(global-set-key [(meta control up)] 'enlarge-window)
(global-set-key [(meta control down)] 'shrink-window)
(global-set-key [(meta shift right)] 'enlarge-window-horizontally)
(global-set-key [(meta shift left)] 'shrink-window-horizontally)

;; Bookmark lines
(global-set-key (kbd "<f2>") 'bm-toggle)
(global-set-key (kbd "<C-f2>") 'bm-next)
(global-set-key (kbd "<M-f2>") 'bm-previous)

;; Window
(global-set-key [(shift up)] 'windmove-up)
(global-set-key [(shift left)] 'windmove-left)
(global-set-key [(shift right)] 'windmove-right)
(global-set-key [(shift down)] 'windmove-down)

;; Grep dired
(global-set-key [(meta shift f)] 'find-grep-dired)

;; Textmate minor-mode keybinds
(global-set-key [(meta shift t)] 'textmate-goto-file)
(global-set-key [(meta shift d)] 'textmate-goto-symbol)
(global-set-key [(meta up)] 'textmate-column-up)
(global-set-key [(meta down)] 'textmate-column-down)
(global-set-key [(meta shift up)] 'textmate-column-up-with-select)
(global-set-key [(meta shift down)] 'textmate-column-down-with-select)
