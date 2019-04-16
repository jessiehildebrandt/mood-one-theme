;;; mood-one-theme-fringe.el --- Fringe bitmap definitions for the Mood One theme. -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; This file is responsible for defining custom fringe bitmaps
;; of supported packages for the Mood One theme.

;;; Code:

;;
;; Variable declarations
;;

(defvar diff-hl--custom-bmp)
(defvar diff-hl-fringe-bmp-function)

;;
;; Function prototypes
;;

(declare-function mood-one-theme--diff-hl-bmp-fn (_type _pos))
(declare-function flycheck-define-error-level (level &rest properties))

;;
;; Define fringe bitmaps
;;

(eval-after-load 'mood-one-theme
  (lambda ()

    ;; Define diff-hl fringe bitmaps
    (eval-after-load 'diff-hl
      (lambda ()
        (setq diff-hl--custom-bmp
              (define-fringe-bitmap 'mood-one-theme--diff-hl-bmp
                (vector #b11100000)
                1 8
                '(center t)))
        (defun mood-one-theme--diff-hl-bmp-fn (_type _pos)
          diff-hl--custom-bmp)
        (setq diff-hl-fringe-bmp-function #'mood-one-theme--diff-hl-bmp-fn)))

    ;; Define flycheck fringe bitmaps
    (eval-after-load 'flycheck
      (lambda()
        (define-fringe-bitmap 'mood-one-theme--flycheck-bmp
          (vector #b11100000
                  #b11110000
                  #b11111000
                  #b11111100
                  #b11111000
                  #b11110000
                  #b11100000))
        (flycheck-define-error-level 'error
          :severity 2
          :overlay-category 'flycheck-error-overlay
          :fringe-bitmap 'mood-one-theme--flycheck-bmp
          :fringe-face 'flycheck-fringe-error)
        (flycheck-define-error-level 'warning
          :severity 1
          :overlay-category 'flycheck-warning-overlay
          :fringe-bitmap 'mood-one-theme--flycheck-bmp
          :fringe-face 'flycheck-fringe-warning)
        (flycheck-define-error-level 'info
          :severity 0
          :overlay-category 'flycheck-info-overlay
          :fringe-bitmap 'mood-one-theme--flycheck-bmp
          :fringe-face 'flycheck-fringe-info)
        ))))

;;
;; Provide mood-one-theme-fringe
;;

(provide 'mood-one-theme-fringe)

;;; mood-one-theme-fringe.el ends here
