(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
(setq flymake-python-pyflakes-executable "flake8")
;; (setq flymake-python-pyflakes-extra-arguments '("--ignore=W806"))
(defun fm-keybind ()
  "bind flymake keybind"
  (local-set-key (kbd "<f5>") 'flymake-display-err-menu-for-current-line))
(add-hook 'python-mode-hook 'fm-keybind)
