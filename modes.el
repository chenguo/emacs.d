;; Clojure
(load "~/.emacs.d/modes/clojure-mode.el")
;;(load "~/.emacs.d/modes/clojure-test-mode.el")
(load "~/.emacs.d/modes/clojurescript-mode.el")

;; Jade
(add-to-list 'load-path "~/.emacs.d/modes")
(require 'sws-mode)
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\jade$" . jade-mode))

;; Mochiscript as javascript
(setq auto-mode-alist (cons '("\\.ms$" . javascript-mode) auto-mode-alist))
(setq js-indent-level 2)
