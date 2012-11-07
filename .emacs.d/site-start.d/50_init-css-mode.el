;; ;; CSS mode
;; (autoload 'css-mode "css-mode")
;; (setq auto-mode-alist
;; 	  (cons '("\\.css$" . css-mode) auto-mode-alist))


;; (autoload 'scss-mode "scss-mode")
;; (add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))



;; ;; CSS
(defun my-css-electric-pair-brace ()
  (interactive)
  (insert "{")(newline-and-indent)
  (newline-and-indent)
  (insert "}")
  (indent-for-tab-command)
  (previous-line)(indent-for-tab-command)
  )

(defun my-semicolon-ret ()
  (interactive)
  (insert ";")
  (newline-and-indent))

  
(autoload 'scss-mode "scss-mode")
;; (add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.\\(scss\\|css\\|scss.erb\\|css.erb\\)\\'" . scss-mode))
(add-hook 'scss-mode-hook 'ac-css-mode-setup)
(add-hook 'scss-mode-hook
          (lambda ()
            (define-key scss-mode-map "\M-{" 'my-css-electric-pair-brace)
            (define-key scss-mode-map ";" 'my-semicolon-ret)
            (setq css-indent-offset 4)
            (setq scss-compile-at-save nil)
            (setq ac-sources '(ac-source-yasnippet
                               ;; ac-source-words-in-same-mode-buffers
                               ac-source-words-in-all-buffer
                               ac-source-dictionary
                               ))
            (flymake-mode t)
            ))
(add-to-list 'ac-modes 'scss-mode)
;;タブ幅を4に
(setq cssm-indent-level 4)
;;インデントをc-styleにする
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-newline-before-closing-bracket t)
(setq cssm-mirror-mode t)
(setq-default indent-tabs-mode nil)
;; (add-to-list 'load-path "~/.emacs.d/plugins/rainbow-mode")
;; ;; CSS and Rainbow modes
;;  (defun all-css-modes() (css-mode) (rainbow-mode))
;; ;; Load both major and minor modes in one call based on file type
;; (add-to-list 'auto-mode-alist '("\\.css$" . all-css-modes))


(require 'mmm-mode)
(setq mmm-global-mode 'maybe)
(set-face-background 'mmm-default-submode-face "navy")

(mmm-add-classes
 '((embedded-css
    :submode css-mode
    :front "<style[^>]*>"
    :back "</style>")))
(mmm-add-mode-ext-class nil "\\.html?\\'" 'embedded-css)

;; (mmm-add-classes
;;  '((html-css
;;     :submode css-mode
;;     :front "<style[^>]*>[ \n]?*<!--[ \n]?"
;;     :back "-->[ \n]?*</style>")))
;; (mmm-add-mode-ext-class nil "\\.html.erb*" 'html-css)
;; (mmm-add-mode-ext-class nil "\\.html*" 'html-css)

(mmm-add-classes
 '((html-js
    :submode js-mode
    :front "<script[^>]*>"
    :back "</script>")))
(mmm-add-mode-ext-class nil "\\.html*" 'html-js)
(mmm-add-mode-ext-class nil "\\.html.erb*" 'html-js)
