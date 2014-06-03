;;(load "cask.el")
(require 'cask)
(cask-initialize)

(require 'ido)
(ido-mode t)

(require 'ruby-electric)
(eval-after-load "ruby-mode"
  '(add-hook 'ruby-mode-hook 'ruby-electric-mode))


