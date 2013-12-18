(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)


(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    init-loader
    anything
    anything-complete
    anything-config
    anything-match-plugin
    anything-obsolete
    anything-show-completion
    popwin
    auto-complete
    flymake-python-pyflakes
    ))

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))

(require 'init-loader)
;; (setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
