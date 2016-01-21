;; -*- lexical-binding: t; -*-
(load "~/.emacs.d/pcmpl-git.el")
(setq eshell-highlight-prompt t)

;; Paths
(defun eshell-mode-hook-func ()
  (setq eshell-path-env (concat "$HOME/bin:$HOME/.rvm/scripts/rvm:$HOME/.nvm/:" eshell-path-env))
  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
  (define-key eshell-mode-map (kbd "M-s") 'other-window-or-split))

(add-hook 'eshell-mode-hook 'eshell-mode-hook-func)

;; Implement some (very) basic missing terminal escape codes
;; (let ((overwrite-start -1)
;;       (overwrite-len 0))
;;   (defun color-escape-replace (string)
;;     (if (> overwrite-start -1)
;;         (progn
;;           (delete-region overwrite-start (+ overwrite-start overwrite-len))
;;           (setq overwrite-start -1)
;;           (setq overwrite-len 0)))
;;     (save-match-data
;;       (if (string-match "\\(.*\\)\^\[\\\[0G" string)
;;           (progn
;;             (setq overwrite-start (point))
;;             (setq overwrite-len (string-width (match-string 1 string)))
;;             (match-string 1 string))
;;         string))))

;; Replace weird colors
(defun color-escape-replace (string)
  (replace-regexp-in-string "\^\[\\\[2K\^\[\\\[0G" "" string))

(add-hook 'eshell-preoutput-filter-functions
          'color-escape-replace)

