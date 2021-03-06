;;
;;
;; 初期設定
;;
;;
;; バッファ名 unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; PATH
(setq exec-path (cons "/usr/local/bin" exec-path))
(add-to-list 'exec-path "~/.emacs.d/bin")

;; mail address
(setq user-mail-address "satoshi.yoshinaga.147@gmail.com")

;; meta key
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

;; バックアップファイルを残さない
(setq make-backup-files nil)

;; ベルを鳴らさない
(setq ring-bell-function 'ignore)

;; 1行ずつスクロール
(setq scroll-step 1)

;; ステータスに行番号＆列番号表示
(column-number-mode t)
(setq default-fill-column 72)

;; 折り返さない
(setq truncate-lines t)
(setq truncate-partial-width-windows t)

;; インデント設定
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq-default tab-width 4)
(c-set-offset 'case-label '+)

;; narrowingを使う
(put 'narrow-to-region 'disabled nil)

;; スタートページ非表示
(setq inhibit-startup-message t)

;; file名の補完で大文字小文字を区別しない
(setq completion-ignore-case t)

;; バッファ自動再読み込み
(global-auto-revert-mode 1)

;; Mac の emacs で find-file のデフォルトディレクトリを "~/" にする。
(setq default-directory "~/")
(setq command-line-default-directory "~/")
