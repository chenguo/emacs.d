(load "~/.emacs.d/zenburn-theme.el")

;; Turn off clunky UI
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode 0))
(if (fboundp 'tool-bar-mode) (tool-bar-mode 0))
;(if (fboundp 'menu-bar-mode) (menu-bar-mode 0))

 ;; Column number mode
(setq-default column-number-mode t)

;; Icky tabs and trailing whitespace
;; Draw tabs with the same color as trailing whitespace
(add-hook 'font-lock-mode-hook
          (lambda ()
            (font-lock-add-keywords
             nil
             '(("\t" 0 'trailing-whitespace prepend)))))
(setq-default highlight-tabs t)
(setq-default show-trailing-whitespace t)
(setq-default indent-tabs-mode nil)

;; Show matching parenthesis
(show-paren-mode t)

;; Italic comments
(custom-set-faces
 '(font-lock-comment-face ((t (:slant italic)))))

;; Turn on highlighting
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

;; Show time
(setq display_time-day-and-date t)
(display-time)


(require 'rainbow-delimiters)
