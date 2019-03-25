; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))
(mapc
 (lambda (package)
   (or (package-installed-p package)
       (package-install package)))
 '(auto-complete
   clojure-mode
   cmake-font-lock
   cmake-ide
   cmake-mode
   coffee-mode
   ace-window
   magit
   magit-filenotify
   js2-mode
   swift-mode
   haskell-mode
   protobuf-mode
   scala-mode
   thrift
   projectile))

;; Load settings
(load "~/.emacs.d/appearance.el")
(load "~/.emacs.d/behavior.el")
(load "~/.emacs.d/keybind.el")
(load "~/.emacs.d/ido_cfg.el")
;(load "~/.emacs.d/cedet_cfg.el")
(load "~/.emacs.d/ac_cfg.el")
(load "~/.emacs.d/hacks.el")
(load "~/.emacs.d/modes.el")
(load "~/.emacs.d/eshell.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(package-selected-packages
   (quote
    (scala-mode projectile thrift swift-mode rainbow-delimiters protobuf-mode magit-filenotify macrostep js2-mode haskell-mode groovy-mode gradle-mode go-mode coffee-mode cmake-ide cmake-font-lock clojure-mode auto-complete ace-window)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:slant italic)))))
