;lsp; Typescript mode with LSP
(setq lsp-ui-sideline-show-diagnostics t
      lsp-ui-sideline-show-hover nil
      lsp-keymap-prefix "C-c C-l")

(setq company-minimum-prefix-length 1
      company-idle-delay 0.0) ;; default is 0.2

(require lsp-mode)

(add-hook 'typescript-mode-hook
          (lambda ()
            (setq-default typescript-indent-level 2)
            (lsp-deferred)))

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred
