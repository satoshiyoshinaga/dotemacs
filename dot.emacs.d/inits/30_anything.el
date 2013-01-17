(setq split-width-threshold 0 split-height-threshold 0) 
(require 'anything-startup)
;; (global-set-key (kbd "C-;")     'anything-filelist+)
(global-set-key (kbd "C-;")     'my-anything)
(global-set-key (kbd "C-x C-f")     'anything-find-file)
(define-key global-map (kbd "M-y") 'anything-show-kill-ring)

(defun anything-custom-filelist ()
    (interactive)
    (anything-other-buffer
     (append
      '(anything-c-source-ffap-line
        anything-c-source-ffap-guesser
        anything-c-source-buffers+
        )
      (anything-c-sources-git-project-for)
      '(anything-c-source-recentf
        anything-c-source-bookmarks
        anything-c-source-file-cache
        anything-c-source-filelist
        ))
     "*my anything file list*"))


(defun my-anything ()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-buffers
     anything-c-source-files-in-current-dir
     anything-c-source-recentf
     anything-c-source-file-name-history
     ) "*my-anything*"))
