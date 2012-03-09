(global-set-key (kbd "C-x C-b") 'ibuffer)
(iswitchb-mode)

(require 'ido)
(ido-mode t)

(require 'textmate)
(textmate-mode)

(require 'window-numbering)
(window-numbering-mode 1)
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))
