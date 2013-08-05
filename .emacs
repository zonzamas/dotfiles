;;
;; Setup puppet-mode for autoloading
;;



(add-to-list 'load-path "~/.emacs.d/tuning/auto-complete")
(add-to-list 'load-path "~/.emacs.d/tuning/puppet-syntax-emacs")
(add-to-list 'load-path "~/.emacs.d/tuning/json-mode")
(add-to-list 'load-path "~/.emacs.d/tuning/js2-mode")
(add-to-list 'load-path "~/.emacs.d/tuning/json")
(add-to-list 'load-path "~/.emacs.d/tuning/magit")
(add-to-list 'load-path "~/.emacs.d/tuning/rinari")
(add-to-list 'load-path "~/.emacs.d/tuning/coffe")
(add-to-list 'load-path "~/.emacs.d/tuning/ruby-mode")
(add-to-list 'load-path "~/.emacs.d/tuning/ws-trim")


;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/tuning/auto-complete/dict")
(require 'auto-complete-config)
(add-to-list 'ac-modes 'coffe-mode)
(ac-config-default)

(autoload 'ruby-mode "ruby-mode" "Major mode for editing Ruby code" t)
(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")
(autoload 'js2-mode "js2" nil t)

(add-hook 'ruby-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))

(require 'ruby-electric)
(add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t)))

(require 'rinari)
(add-hook 'ruby-mode-hook 'rinari-minor-mode)

;;(add-hook 'ruby-mode-hook 'whitespace-mode)



;;(set-foreground-color "white")
(set-background-color "black")

(require 'tramp)
(require 'magit)
(require 'json-mode)
;;(require 'json)
(require 'coffee-mode)

(setq tramp-default-method "scp")


 ;; Interactively Do Things (highly recommended, but not strictly required)
;;(require 'ido)
;;(ido-mode t)

;; Rinari
(add-to-list 'load-path "~/.emacs.d/tuning/rinari")
(require 'rinari)


;; Puppet
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))
;; Coffee
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))



(require 'ws-trim)
(global-ws-trim-mode t)
(set-default 'ws-trim-level 3)
(setq ws-trim-global-modes '(guess (not message-mode eshell-mode)))

(setq-default indent-tabs-mode nil)

(fset 'align=>
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote (" xsear	fo	-	^$xinde	-ta	xalig	-reg	=>" 0 "%d")) arg)))

(fset 'alig2
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("xmark	par	xalig	-		reg				ind			e				-re	g	xalig	-re	=>  OB" 0 "%d")) arg)))


(global-set-key (kbd "<f5>") 'alig2)

