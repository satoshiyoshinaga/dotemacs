(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "C-;")     'helm-mini)
(global-set-key (kbd "C-x C-f")     'helm-find-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-x") 'helm-M-x)

;; C-h at minibuffer
(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

;; alc
(defun helm-alc:init ()
  (with-current-buffer (helm-candidate-buffer 'global)
    (let ((ret (call-process-shell-command "look ." nil t)))
      (unless (zerop ret)
        (error "Failed look ")))))

(defun helm-alc:action (word)
  (loop for marked in (helm-marked-candidates)
        for url = (format "http://eow.alc.co.jp/%s/UTF-8/?ref=sa" marked)
        do
        (browse-url url)))

(defvar helm-c-source-alc
  '((name . "alc")
    (init . helm-alc:init)
    (candidates-in-buffer)
    (candidate-number-limit . 100)
    (action . helm-alc:action)
    (requires-pattern . 2)))

(defun helm-alc ()
  (interactive)
  (helm :sources '(helm-c-source-alc) :buffer "*helm alc*"))

(require 'helm-ls-git)
(global-set-key (kbd "C-:")     'helm-browse-project)
