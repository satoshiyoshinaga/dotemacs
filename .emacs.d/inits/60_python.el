(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
(setq flymake-python-pyflakes-executable "flake8")
;; (setq flymake-python-pyflakes-extra-arguments '("--ignore=W806"))
