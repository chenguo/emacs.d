;; Skip startup message
(setq inhibit-startup-message t)

;; Don't make backup files
(setq make-backup-files nil)

; Indentation
(setq c-default-style "linux" c-basic-offset 2)
(defun arg-indent ()
  (c-set-offset 'arglist-intro '+))
(add-hook 'c-mode-common-hook 'arg-indent)

;; CMD: dont process echoes
(defun my-comint-init ()
   (setq comint-process-echoes t)
   (setq ansi-color-for-comint-mode t)
   (add-to-list
    'comint-preoutput-filter-functions
    (lambda (output)
      (replace-regexp-in-string "\\[[0-9]+[GK]" "" output))))
(add-hook 'comint-mode-hook 'my-comint-init)
;; Suppress some garbage chars

(setenv "NODE_NO_READLINE" "1")

;; Share clipboard
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-selection-value)

;; Search
(setq search-highlight t)
(setq case-fold-search t)

;; Disable erasing entire buffer
(put 'erase-buffer 'disabled nil)

;; Handle buffers with the same name
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
