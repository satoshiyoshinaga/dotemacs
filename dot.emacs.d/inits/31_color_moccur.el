(when (require 'color-moccur nil t)
  (define-key global-map (kbd "C-m") 'occur-by-moccur)
  (setq moccur-split-word t)
  (add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
  (when (and (executable-find "cmigemo")
             (require 'migemo nil t))
    (setq moccur-use-migemo t))
  (require 'moccur-edit nil t)
  )


