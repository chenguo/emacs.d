;; Jade
(add-to-list 'load-path "~/.emacs.d/modes")
(require 'sws-mode)
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\jade$" . jade-mode))

;; JS2
(autoload 'js2-mode "js2" nil t)
(setq js2-basic-offset 2)
(setq js2-use-font-lock-faces t)

;; Mochiscript as javascript
(setq auto-mode-alist (cons '("\\.ms$" . javascript-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.jsx$" . javascript-mode) auto-mode-alist))
(setq js-indent-level 2)

;; CoffeeScript
(add-hook 'coffee-mode-hook (lambda () (setq tab-width 2)))

;; Swift
(setq swift-indent-offset 2)

;; ObjC++
(setq auto-mode-alist (cons '("\\.mm$" . objc-mode) auto-mode-alist))

;; Java
;; (add-to-list 'load-path "~/.emacs.d/auto-java-complete/")
;; (require 'ajc-java-complete-config)
;; (add-hook 'java-mode-hook 'ajc-java-complete-mode)
;; (add-hook 'find-file-hook 'ajc-4-jsp-find-file-hook)

;; Go
(add-hook 'go-mode-hook
          (lambda ()
            ;;(add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 2)
            (setq indent-tabs-mode nil)))
