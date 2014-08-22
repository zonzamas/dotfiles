;;(load "cask.el")
(require 'cask)
(cask-initialize)

(require 'ido)
(ido-mode t)

;;(require 'ruby-electric)
;;(eval-after-load "ruby-mode"
;;  '(add-hook 'ruby-mode-hook 'ruby-electric-mode))

(add-to-list 'auto-mode-alist
	     '("\\.\\(?:gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
	     '("\\(Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))

(add-to-list 'auto-mode-alist
	     '("tf" . puppet-mode))


(pending-delete-mode)
(auto-complete-mode)

;; dirty fix for having AC everywhere
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
                         (auto-complete-mode 1))
                       ))
(real-global-auto-complete-mode t)

(global-set-key (kbd "C-c m") 'er/expand-region)
(global-set-key (kbd "C-c j") 'comment-region)
(global-set-key (kbd "C-c k") 'uncomment-region)

