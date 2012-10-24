;; Configuration for loading CEDET
(load-file "~/.emacs.d/cedet/common/cedet.el")

;; Enable EDE (Project Management) features
(global-ede-mode 1)

;; * This enables the database and idle reparse engines
;;(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode,
;;   imenu support, and the semantic navigator
(semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as intellisense mode,
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-gaudy-code-helpers)

;; * This enables the use of Exuberant ctags if you have it installed.
;;   If you use C++ templates or boost, you should NOT enable it.
;; (semantic-load-enable-all-exuberent-ctags-support)
;;   Or, use one of these two types of support.
;;   Add support for new languages only via ctags.
;; (semantic-load-enable-primary-exuberent-ctags-support)
;;   Add support for using ctags as a backup parser.
;; (semantic-load-enable-secondary-exuberent-ctags-support)

;; Enable SRecode (Template management) minor-mode.
 (global-srecode-minor-mode 1)

;; Make a tool tip for completion choices
;;(setq semantic-complete-inline-analyzer-idle-displayor-class semantic-displayor-tooltip-mode)

;; ;; Integrate semantic with imenu
(defun my-semantic-hook()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hooks 'my-semantic-hook)