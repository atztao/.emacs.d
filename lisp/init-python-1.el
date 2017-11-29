;;This Config For Python Enviorment

;;Elpy
(elpy-enable)

;;Flycheck With Elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;;pip install autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)


(setq py-python-command "/home/zhangtao/anaconda3/bin/python3")
(setq python-shell-completion-native-enable nil)

(setq elpy-rpc-python-command "python3")
(setq elpy-rpc-backend "jedi")
;;(setq python-shell-interpreter "python3")
(setq python-shell-interpreter "/home/zhangtao/anaconda3/bin/python3")

(add-hook 'python-mode-hook
          (lambda () (setq tab-width 4)))

;;(elpy-use-ipython)
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)

;;(setq tab-width 4)
(set-variable 'py-indent-offset 4)
(set-variable 'python-indent-guess-indent-offset nil)
;;(setq python-indent-trigger-commands nil)
(add-hook 'python-mode-hook
   '(lambda () (set (make-local-variable 'yas-indent-line) 'fixed)))
(provide 'init-python-1)
