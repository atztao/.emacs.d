;;This Config For Python Enviorment

(setq ein:jupyter-default-server-command "~/anaconda3/bin/jupyter")
(setq ein:jupyter-server-args (list "--no-browser"))


;;Elpy
(elpy-enable)
(elpy-use-ipython)
;; ;;Flycheck With Elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;;pip install autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)


;;(setq py-python-command "/home/zhangtao/anaconda3/bin/python3")
(setq python-shell-completion-native-enable nil)

(setq python-shell-interpreter "/home/zhangtao/anaconda3/bin/python3"
      ;;python-shell-interpreter-args "-m IPython --simple-prompt -i"
      )
     
;;(setq elpy-rpc-python-command "python3")
;;(setq elpy-rpc-backend "jedi")

(add-hook 'python-mode-hook
          (lambda () (setq tab-width 4)))



;; (setq jedi:complete-on-dot t)
;; (setq jedi:use-shortcuts t)

;; (setq compandy-minimum-prefix-length 3)
;; (setq company-tooltip-align-annotations t)
;; (setq company-transformers '(company-sort-by-occurrence))
;; (setq company-selection-wrap-around t)

;; (define-key company-active-map (kbd "M-n") nil)
;; (define-key company-active-map (kbd "M-p") nil)
;; (define-key company-active-map (kbd "C-n") 'company-select-next)
;; (define-key company-active-map (kbd "C-p") 'company-select-previous)

;; (define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
;; (define-key company-active-map (kbd "<tab>") 'company-complete-common-or-cycle)
;; (define-key company-active-map (kbd "S-TAB") 'company-select-previous)
;; (define-key company-active-map (kbd "<backtab>") 'company-select-previous)


(setq tab-width 4)
(set-variable 'py-indent-offset 4)
(set-variable 'python-indent-guess-indent-offset nil)
(setq python-indent-trigger-commands nil)
(add-hook 'python-mode-hook
   '(lambda () (set (make-local-variable 'yas-indent-line) 'fixed)))


;; (setq jedi:server-args
;;       '("--sys-path" "~/anaconda3/lib/python3.6/site-packages"
;;         ;; ... and more! ...
;;         ))



(provide 'init-python-1)
