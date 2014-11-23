; Packages
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
;; (add-to-list 'package-archives
;;              '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))
(mapc
 (lambda (package)
   (or (package-installed-p package)
       (package-install package)))
 '(auto-complete clojure-mode coffee-mode rainbow-delimiters magit magit-filenotify magit-log-edit helm))

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

; Load nxhtml
;(load "~/.emacs.d/nxhtml/autostart")
;(setq mumamo-background-colors nil)
