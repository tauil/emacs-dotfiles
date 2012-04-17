(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(if (eq system-type 'darwin)
    (setenv "PATH" "/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"))

(setq eshell-aliases-file "~/Projetos/emacs-dotfiles/aliases")

(defalias 'ff 'find-file)
(defalias 'fo 'find-file-other-window)

(require 'ansi-color)
    (require 'eshell)
    (defun eshell-handle-ansi-color ()
      (ansi-color-apply-on-region eshell-last-output-start
                                  eshell-last-output-end))
    (add-to-list 'eshell-output-filter-functions 'eshell-handle-ansi-color)
