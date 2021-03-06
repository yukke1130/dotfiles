;;====================
;; ElScreen
;;====================
(add-to-list 'load-path "~/.emacs.d/share/apel-10.8/")
(add-to-list 'load-path "~/.emacs.d/elisp/elscreen/")


(load "elscreen" "ElScreen" t)
;; (when (req elscree)
  (elscreen-set-prefix-key "\C-t")
  (setq elscreen-display-tab 10) ; タブの幅（６以上じゃないとダメ）
  (setq elscreen-tab-display-kill-screen nil) ; タブの左端の×を非表示
  (global-set-key (kbd "C-t C-c") 'elscreen-clone) ; 今のウインドウを基に作成
  (global-set-key (kbd "C-t C-k") 'elscreen-kill-screen-and-buffers) ; スクリーンとバッファをkill
  (global-set-key [(C-tab)] 'elscreen-next) ; ブラウザみたいに
  (global-set-key [(C-S-tab)] 'elscreen-previous) ; ブラウザみたいに　その2
  ;; elscreen-server
  (req elscreen-server)
  ;; elscreen-dired
  (req elscreen-dire)d
  ;; elscreen-color-theme
  (req elscreen-color-theme)
;; )

(require 'elscreen-color-theme)


;; ;; EmacsでGNU screen風のインターフェイスを使う
;;  (when (req elscree)
;;   (setq elscreen-preifx-key "\C-t")
;; ;;  (if window-system
;;       (define-key elscreen-map "\C-t" 'iconify-or-deiconify-frame)
;;     (define-key elscreen-map "\C-t" 'suspend-emacs)
;;     ;; 以下は自動でスクリーンを生成する場合の設定
;;     (defmacro elscreen-create-automatically (ad-do-it)
;;       `(if (not (elscreen-one-screen-p))
;;            ,ad-do-it
;;          (elscreen-create)
;;          (elscreen-notify-screen-modification 'force-immediately)
;;          (elscreen-message "New screen is automatically created")))

;;     (defadvice elscreen-next (around elscreen-create-automatically activate)
;;       (elscreen-create-automatically ad-do-it))

;;     (defadvice elscreen-previous (around elscreen-create-automatically activate)
;;       (elscreen-create-automatically ad-do-it))

;;     (defadvice elscreen-toggle (around elscreen-create-automatically activate)
;;       (elscreen-create-automatically ad-do-it))

;;     (setq elscreen-display-tab 10) ; タブの幅（６以上じゃないとダメ）
;;     (setq elscreen-tab-display-kill-screen nil) ; タブの左端の×を非表示

;;     (global-set-key (kbd "C-t C-c") 'elscreen-clone) ; 今のウインドウを基に作成
;;     (global-set-key (kbd "C-t C-k") 'elscreen-kill-screen-and-buffers) ; スクリーンとバッファをkill
;;     (global-set-key [(C-tab)] 'elscreen-next) ; ブラウザみたいに
;;     (global-set-key [(C-S-tab)] 'elscreen-previous) ; ブラウザみたいに　その2

;;     ;; elscreen-server
;;     (req elscreen-server)

;;     ;; elscreen-dired
;;     (req elscreen-dired)

;;     ;; elscreen-color-theme
;;     (req elscreen-color-theme)
;;   ;;   )
;;      )
