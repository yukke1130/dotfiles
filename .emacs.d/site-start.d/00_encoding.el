(when (>= emacs-major-version 23)
  (set-face-attribute 'default nil
                      :family "source code pro"
                      :height 140)
  (set-fontset-font
    (frame-parameter nil 'font)
    'japanese-jisx0208
    '("Hiragino Maru Gothic Pro" . "iso10646-1"))
  (set-fontset-font
    (frame-parameter nil 'font)
    'japanese-jisx0212
    '("Hiragino Maru Gothic Pro" . "iso10646-1"))
  (set-fontset-font
    (frame-parameter nil 'font)
    'mule-unicode-0100-24ff
    '("source code pro" . "iso10646-1"))
  (setq face-font-rescale-alist
        '(("^-apple-hiragino.*" . 1.0)
          (".*osaka-bold.*" . 1.0)
          (".*osaka-medium.*" . 1.0)
          (".*courier-bold-.*-mac-roman" . 0.8)
          (".*monaco cy-bold-.*-mac-cyrillic" . 0.7)
          (".*monaco-bold-.*-mac-roman" . 0.7)
          ("-cdac$" . 1.1))))


;;----------------------------------------------------------------
;; Transparency
;;----------------------------------------------------------------
;;alpha
(set-frame-parameter (selected-frame)  'alpha  '(91 61))


;;(require 'ido)
;;(ido-mode 'file)
;;(ido-everywhere t)
;;(custom-set-variables '(ido-max-directory-size 'const))
;;(custom-set-variables '(ido-enter-matching-directory 'first))
;;(custom-set-variables '(ido-ignore-files (cons '"\\`\\." ido-ignore-files)))
;;(define-key ido-file-dir-completion-map (kbd "SPC") 'ido-exit-minibuffer)     ; ここ
;;(define-key ido-file-dir-completion-map (kbd "C-h") 'ido-delete-backward-updir)


;;(require 'yaml-mode)
;;(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
