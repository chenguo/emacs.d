;; Skip startup message
(setq inhibit-startup-message t)

;; Don't make backup files
(setq make-backup-files nil)

; Indentation
(setq c-default-style "linux" c-basic-offset 2)
(defun arg-indent ()
  (c-set-offset 'arglist-intro '+))
(add-hook 'c-mode-common-hook 'arg-indent)

; CMD: dont process echoes
(defun my-comint-init ()
   (setq comint-process-echoes t))
(add-hook 'comint-mode-hook 'my-comint-init)

;; Share clipboard
(setq x-select-enable-clipboard t)
 (setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; Search
(setq search-highlight t)
(setq case-fold-search t)

;; Disable erasing entire buffer
(put 'erase-buffer 'disabled nil)

;; Mochiscript as javascript
(setq auto-mode-alist (cons '("\\.ms$" . javascript-mode) auto-mode-alist))
(setq js-indent-level 2)