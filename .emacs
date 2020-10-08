; Packages
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))
(mapc
 (lambda (package)
   (or (package-installed-p package)
       (package-install package)))
 '(ace-window
   magit
   magit-filenotify
   js2-mode
   protobuf-mode
   thrift
   projectile
   smex
   flx-ido
   ido-vertical-mode
   rainbow-delimiters
   exec-path-from-shell
   typescript-mode
   lsp-mode
   lsp-treemacs
   yaml-mode
   highlight-indentation
   px
   zenburn-theme
   lsp-ui
   ))

;; Load settings
(load "~/.emacs.d/appearance.el")
(load "~/.emacs.d/behavior.el")
(load "~/.emacs.d/keybind.el")
(load "~/.emacs.d/ido_cfg.el")
(load "~/.emacs.d/hacks.el")
(load "~/.emacs.d/modes.el")
(load "~/.emacs.d/lsp-cfg.el")
(load "~/.emacs.d/eshell.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(global-company-mode t)
 '(package-selected-packages
   '(lsp-ui py-autopep8 graphviz-dot-mode highlight-indentation indent-tools yaml-mode lsp-treemacs tide lsp-mode typescript-mode exec-path-from-shell smex git-commit ido-vertical-mode flx-ido magit cider clojure-mode-extra-font-locking scala-mode projectile thrift swift-mode rainbow-delimiters protobuf-mode magit-filenotify macrostep js2-mode haskell-mode groovy-mode go-mode coffee-mode cmake-ide cmake-font-lock clojure-mode auto-complete ace-window px))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:slant italic)))))
