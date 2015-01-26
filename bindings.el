;; Change meta to apple command key
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'option)

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

(global-set-key (kbd "C-n")
                (lambda () (interactive) (next-line 5)))

(global-set-key (kbd "C-p")
                (lambda () (interactive) (previous-line 5)))

;; Rename file and buffer
(defun rename-this-buffer-and-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let ((new-name (read-file-name "New name: " filename)))
        (cond ((get-buffer new-name)
               (error "A buffer named '%s' already exists!" new-name))
              (t
               (rename-file filename new-name 1)
               (rename-buffer new-name)
               (set-visited-file-name new-name)
               (set-buffer-modified-p nil)
               (message "File '%s' successfully renamed to '%s'" name (file-name-nondirectory new-name))))))))

(global-set-key (kbd "C-c r") 'rename-this-buffer-and-file)

(global-set-key [(control alt 'up)] 'drag-stuff-up)
(global-set-key [(control alt 'down)] 'drag-stuff-down)
(global-set-key [(control alt 'right)] 'drag-stuff-right)
(global-set-key [(control alt 'left)] 'drag-stuff-left)
