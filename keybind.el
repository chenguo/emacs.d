;; Custom keyindings
;; Map M-x to something simpler
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Set backwards kill
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; Aliases
(defalias 'qrr' query-replace-regexp)

;; Windmove (shift+direction for swiching buffers)
(when (fboundp 'windmove-default-keybindings)
      (windmove-default-keybindings))