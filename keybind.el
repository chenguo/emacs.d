;; Custom keyindings
;; Map M-x to something simpler
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Set backwards kill
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; Aliases
(defalias 'e' eshell)
(defalias 'm' magit-status)

;; Windmove (shift+direction for swiching buffers)
(when (fboundp 'windmove-default-keybindings)
      (windmove-default-keybindings))
;; Shift + Up key misinterpretted in terminal
(define-key input-decode-map "\e[1;2A" [S-up])

;; Ace window
(global-set-key (kbd "M-p") 'ace-window)
