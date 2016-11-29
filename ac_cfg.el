;; Default cfg for auto-complete
(add-to-list 'load-path "~/.emacs.d/auto-complete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")

;; Enable auto-complete for PHP
(add-to-list 'ac-modes 'php-mode)
(add-to-list 'ac-modes 'clojure-mode)

;; etags support to auto-complete. taken from
;;  http://www.emacswiki.org/emacs-en/download/auto-complete-etags.el
(defface ac-etags-candidate-face
  '((t (:background "gainsboro" :foreground "deep sky blue")))
  "Face for etags candidate")

(defface ac-etags-selection-face
  '((t (:background "deep sky blue" :foreground "white")))
  "Face for the etags selected candidate.")

(defvar ac-source-etags
  '((candidates . (lambda ()
                    (all-completions ac-target (tags-completion-table))))
    (candidate-face . ac-etags-candidate-face)
    (selection-face . ac-etags-selection-face)
    (requires . 3))
  "Source for etags.")

;; Custom auto-complete initialization
(setq-default ac-sources '(ac-source-abbrev ac-source-semantic))
(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
(add-hook 'css-mode-hook 'ac-css-mode-setup)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(global-auto-complete-mode t)

;; Make char sequence trigger auto-complete
(defun ac-semantic-trigger (string-list)
  (dolist (string string-list)
    (add-to-list 'ac-omni-completion-sources
               (cons string '(ac-source-abbrev))))
)

;; (add-hook 'c-mode-common-hook (lambda () (ac-semantic-trigger '("\\." "->"))))

