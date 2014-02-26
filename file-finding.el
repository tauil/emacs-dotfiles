(global-set-key (kbd "C-x C-b") 'ibuffer)
(iswitchb-mode)

(package-install 'ido)
(require 'ido)
(ido-mode t)

(package-install 'textmate)
(require 'textmate)
(textmate-mode)

(require 'window-numbering)
(window-numbering-mode 1)
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))
