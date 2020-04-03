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

;; font size by DPI
;; https://emacs.stackexchange.com/a/44930
(defun my-dpi (&optional frame)
  "Get the DPI of FRAME (or current if nil)."
  (cl-flet ((pyth (lambda (w h)
                    (sqrt (+ (* w w)
                             (* h h)))))
            (mm2in (lambda (mm)
                     (/ mm 25.4))))
    (let* ((atts (frame-monitor-attributes frame))
           (pix-w (cl-fourth (assoc 'geometry atts)))
           (pix-h (cl-fifth (assoc 'geometry atts)))
           (pix-d (pyth pix-w pix-h))
           (mm-w (cl-second (assoc 'mm-size atts)))
           (mm-h (cl-third (assoc 'mm-size atts)))
           (mm-d (pyth mm-w mm-h)))
      (/ pix-d (mm2in mm-d)))))

(defun my-preferred-font-size ()
  (let ((dpi (my-dpi)))
    (message "dpi" dpi)
    (cond
     ((< dpi 110) 96)
     ((< dpi 160) 128)
     (t 175))))

(set-face-attribute 'default nil
                    :height
                    (my-preferred-font-size))
