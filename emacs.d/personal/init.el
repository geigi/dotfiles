(add-to-list 'load-path "~/.emacs.d/personal/plugins/matlab-emacs")
(load-library "matlab-load")
(matlab-cedet-setup)
(add-hook 'matlab-mode
          (lambda ()
            (auto-complete-mode 1)
            ))
(custom-set-variables
 '(matlab-shell-command-switches '("-nodesktop -nosplash")))

;; for GDB/debugging in general
(global-set-key (kbd "<f10>") 'gud-cont)
(global-set-key (kbd "<f9>") 'gud-step);; equiv matlab step in
(global-set-key (kbd "<f8>") 'gud-next) ;; equiv matlab step 1 
(global-set-key (kbd "<f7>") 'gud-finish) ;; equiv matlab step out
(setq default-input-method "MacOSX")
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'none)
