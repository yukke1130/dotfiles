;;@see

;; 背景の透過
(add-to-list 'default-frame-alist '(alpha . (88 40)))
;;(add-to-list 'default-frame-alist '(alpha . (95 85)))

;; タブ文字、全角空白、文末の空白の色付け
;; @see http://www.emacswiki.org/emacs/WhiteSpace
;; @see http://xahlee.org/emacs/whitespace-mode.html
(setq whitespace-style '(spaces tabs newline space-mark tab-mark newline-mark))

;; 現在行に色を付ける
(global-hl-line-mode)
(hl-line-mode 1)


;;color-theme***********************************

(req color-theme)
;; (eval-after-load "color-theme"
;;   '(progn
;;      (color-theme-initialize)
;;      (color-theme-blue-sea)
;;      (color-theme-solarized-light)
;;      ))


(req color-theme-solarized)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-midnight)
     ))
