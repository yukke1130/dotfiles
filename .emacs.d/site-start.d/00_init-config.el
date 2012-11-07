;;C-c c を範囲指定コメントに
(global-set-key "\C-cc" 'comment-region)
;;C-c u を範囲指定コメント解除に
(global-set-key "\C-cu" 'uncomment-region)

;;モードラインにバッテリ残量を表示
(display-battery-mode t)

;;補完で大文字小文字の区別をしない
(setq completion-ignore-case t)
;;Shift + 矢印キーで領域
(setq pc-select-selection-keys-only t)
(pc-selection-mode 1)
;;画像表示
;;(auto-image-file-mode)
;; スタートアップページを表示しない
(setq inhibit-startup-message t)
;;補完機能
;; (setq partial-completion-mode 1)
;;; タイトルバーにファイル名を表示する
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))
; 最近使ったファイルを保存(M-x recentf-open-filesで開く)
(recentf-mode)
;;対応する括弧を光らせる。
(show-paren-mode t)
;;選択部分のハイライト
(transient-mark-mode t)


;; (add-to-list 'load-path "~/.emacs.d/elisp/rinari")

;; (add-to-list 'load-path "~/path/to/your/elisp/rhtml")
;; (add-to-list 'load-path "~/.emacs.d/elisp/rhtml")




(setq cua-enable-cua-keys nil)
(cua-mode t)
