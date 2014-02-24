(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

(push '("^\*helm .+\*$*" :regexp t :position bottom :width 45 :dedicated t)
      popwin:special-display-config)
(push '("*Moccur*" :position bottom :width 80 :dedicated t)
      popwin:special-display-config)
