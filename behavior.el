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
;;(setq interprogram-paste-function 'x-selection-value)

;; Search
(setq search-highlight t)
(setq case-fold-search t)

;; Disable erasing entire buffer
(put 'erase-buffer 'disabled nil)

; Display current function
(setq which-func-mode t)

;; Handle buffers with the same name
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(setq tab-width 2)

;; Nightly maintenance
(require 'midnight)

(midnight-delay-set 'midnight-delay "4:30am")


;; Projectile mode
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; GC less often
;; 0.76 MB default to 20 MB
(setq gc-cons-threshold 20000000)

(setq cider-jack-in-default 'lein)
(setq cider-default-repl-command "lein")
(define-obsolete-variable-alias 'cider-default-repl-command 'cider-jack-in-default)
(defcustom cider-jack-in-default (if (executable-find "clojure") 'clojure-cli 'lein)
  "The default tool to use when doing `cider-jack-in' outside a project.
This value will only be consulted when no identifying file types, i.e.
project.clj for leiningen or build.boot for boot, could be found.

As the Clojure CLI is bundled with Clojure itself, it's the default.
In the absence of the Clojure CLI (e.g. on Windows), we fallback
to Leiningen."
  :type '(choice (const 'lein)
                 (const 'boot)
                 (const 'clojure-cli)
                 (const 'shadow-cljs)
                 (const 'gradle))
  :group 'cider
  :safe #'symbolp
  :package-version '(cider . "0.9.0"))

;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(setq visible-bell 1)
