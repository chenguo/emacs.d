;; Lifted straight off of emacs-fu
;; http://emacs-fu.blogspot.com/2009/02/switching-buffers.html
(require 'ido)
(require 'flx-ido)

(ido-mode 'both) ;; for both buffers & files
(ido-everywhere 1)
(flx-ido-mode 1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-C-p-up-and-down)

;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(setq
  ido-save-directory-list-file "~/.emacs.d/cache/ido.last"

  ido-ignore-buffers ;; ignore these guys
  '("\\` " "^\*Mess" "^\*Back" ".*Completion" "^\*Ido" "^\*trace"

     "^\*compilation" "^\*GTAGS" "^session\.*" "^\*")
  ;; ido-work-directory-list-ignore-regexps '("\.*")
  ido-work-directory-list '("~/ ~/code/")
  ido-case-fold  t                 ; be case-insensitive

  ido-enable-last-directory-history t ; remember last used dirs
  ido-max-work-directory-list 30   ; should be enough
  ido-max-work-file-list      50   ; remember many
  ido-use-filename-at-point nil    ; don't use filename at point (annoying)
  ido-use-url-at-point nil         ; don't use url at point (annoying)

  ;ido-enable-flex-matching nil     ; don't try to be too smart
  ido-enable-flex-matching t
  ido-max-prospects 8              ; don't spam my minibuffer
  ido-confirm-unique-completion t) ; wait for RET, even with unique completion

;; when using ido, the confirmation is rather annoying...
(setq confirm-nonexistent-file-or-buffer nil)
