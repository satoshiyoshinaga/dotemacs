(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

(setq anything-samewindow nil)
(push '("*anything file list*" :position left :width 45 :dedicated t)
      popwin:special-display-config)
(push '("*anything*" :position left :width 45 :dedicated t)
      popwin:special-display-config)
(push '("*anything find-file*" :position left :width 45 :dedicated t)
      popwin:special-display-config)
