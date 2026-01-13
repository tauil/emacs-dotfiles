(use-package flycheck
  :ensure t
  :config
  (add-hook 'typescript-mode-hook 'flycheck-mode))

;; ;; Point to the eslint in node_modules
;; (defun my/use-eslint-from-node-modules ()
;;   (let* ((root (locate-dominating-file
;;                 (or (buffer-file-name) default-directory)
;;                 "node_modules"))
;;          (eslint (and root
;;                       (expand-file-name "node_modules/.bin/eslint"
;;                                         root))))
;;     (when (and eslint (file-executable-p eslint))
;;       (setq-local flycheck-javascript-eslint-executable eslint))))

;; (add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))

(use-package company
  :ensure t
  :config
  ;; invert the navigation direction if the the completion popup-isearch-match
  ;; is displayed on top (happens near the bottom of windows)
  (setq company-tooltip-flip-when-above t
        ;;company-show-numbers t
        company-tooltip-align-annotations t
        company-minimun-prefix-lengh 1
        company-idel-delay 0.0)
  (global-company-mode))

(use-package company-quickhelp
  :ensure t
  :init
  (company-quickhelp-mode 1)
  (use-package pos-tip
    :ensure t))

(use-package web-mode
  :ensure t
  :mode (("\\.html?\\'" . web-mode)
         ("\\.tsx\\'" . web-mode)
         ("\\.jsx\\'" . web-mode))
  :config
  (setq web-mode-markup-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-block-padding 2
        web-mode-comment-style 2

        web-mode-enable-css-colorization t
        web-mode-enable-auto-pairing t
        web-mode-enable-comment-keywords t
        web-mode-enable-current-element-highlight t
        web-mode-enable-auto-indentation nil
        )
  (add-hook 'web-mode-hook
            (lambda ()
              (when (string-equal "tsx" (file-name-extension buffer-file-name))
                (hs-minor-mode 1)
                (setup-tide-mode))))
  )
  ;; enable typescript-tslint checker
  ;; Testing out to check the speed:
  ;; (flycheck-add-mode 'typescript-tslint 'web-mode))

(use-package typescript-mode
  :ensure t
  :config
  (setq typescript-indent-level 2)
  (add-hook 'typescript-mode (lambda ()
                               (hs-minor-mode 1)
                               (subword-mode 1))))

(use-package tide
  :init
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)))

(use-package css-mode
  :config
(setq css-indent-offset 2))

;; Fixes tide-server start
(defun get-current-nvm-node-path ()
  "Get the current nvm node executable path."
  (let ((nvm-current (string-trim (shell-command-to-string "bash -c 'source ~/.nvm/nvm.sh && nvm current'"))))
    (format "/Users/rafaeltauil/.nvm/versions/node/%s/bin/node" nvm-current)))

(defun get-current-nvm-bin-path ()
  "Get the current nvm bin directory path."
  (let ((nvm-current (string-trim (shell-command-to-string "bash -c 'source ~/.nvm/nvm.sh && nvm current'"))))
    (format "/Users/rafaeltauil/.nvm/versions/node/%s/bin" nvm-current)))

(setq tide-node-executable (get-current-nvm-node-path))
(setq exec-path (append exec-path (list (get-current-nvm-node-path))))
(setq exec-path (append exec-path (list (format "%s/npm" (get-current-nvm-bin-path)))))

;; Adds to path so all binaries works within magit (prepend so NVM takes priority)
(setenv "PATH" (concat (get-current-nvm-bin-path) ":" (getenv "PATH")))

(use-package prettier
  :ensure t
  :hook ((rjsx-mode . prettier-mode)
         (typescript-mode . prettier-mode)
         (web-mode . prettier-mode)))

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :init (setq lsp-keymap-prefix "C-c l")
  :config (lsp-enable-which-key-integration t))

;; Loads copilot
(setq copilot-node-executable (get-current-nvm-node-path))
(load "copilot")
