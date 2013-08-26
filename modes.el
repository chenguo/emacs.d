;; Jade
(add-to-list 'load-path "~/.emacs.d/modes")
(require 'sws-mode)
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\jade$" . jade-mode))

;; Mochiscript as javascript
(setq auto-mode-alist (cons '("\\.ms$" . javascript-mode) auto-mode-alist))
(setq js-indent-level 2)

;; 2-space indent for CoffeeScript
(add-hook 'coffee-mode-hook (lambda () (setq tab-width 2)))

;; nRepl
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
(setq nrepl-popup-stacktraces nil)
(add-to-list 'same-window-buffer-names "*nrepl*")
;(add-hook 'nrepl-mode-hook 'paredit-mode)

;; Java
(add-to-list 'load-path "~/.emacs.d/auto-java-complete/")
(require 'ajc-java-complete-config)
(add-hook 'java-mode-hook 'ajc-java-complete-mode)
(add-hook 'find-file-hook 'ajc-4-jsp-find-file-hook)
