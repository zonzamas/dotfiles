;;(load "cask.el")
(add-to-list 'load-path "~/.cask/")
(require 'cask)
(cask-initialize)

(require 'ido)
(ido-mode t)

(require 'ruby-electric)
(eval-after-load "ruby-mode"
  '(add-hook 'ruby-mode-hook 'ruby-electric-mode))

(add-to-list 'auto-mode-alist
	          '("\\.\\(?:gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
	          '("\\(Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))

(pending-delete-mode)
(auto-complete-mode)
