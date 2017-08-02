; /*-----------------------------------------
;; Athor:Zhang Tao
;; Email:ztao1991@gmail.com
;; Gtihub:github.com/ztao1991
;; Version:v2017.5.11
;; ------------------------------------------*/

;;-----------------------------------------------
;;Emacs Startup 
;;-----------------------------------------------

;; (server-start)  
;;(desktop-save-mode) 

(setq frame-title-format
      (list '(:eval (projectile-project-name)) 
            "(●—●) I'm Here @ "
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;;(set-fontset-font "fontset-default" 'gb18030' ("Microsoft YaHei" . "unicode-bmp"))

(setq initial-scratch-message "")
;; (defun display-startup-echo-area-message ()
;;   (message "Just Type For Fun Or Hacking The Write."))
(defun display-startup-echo-area-message ()
  (message ""))

(setq x-select-enable-clipboard t)
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(tool-bar-mode 0)  
(menu-bar-mode 0)  
(scroll-bar-mode 0)  
;;(set-scroll-bar-mode 'right)
;;(visual-line-mode 1)
(global-visual-line-mode 1)
(setq inhibit-startup-screen t)
(setq ring-bell-function 'ignore)
(set-fringe-mode '(0 . 0))

(fset 'yes-or-no-p 'y-or-n-p)

(add-to-list 'default-frame-alist '(height . 20))
(add-to-list 'default-frame-alist '(width . 52))

sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*"
sentence-end-double-space nil         ;;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插入两个空格。

;;(setq default-directory "C:/Users/zhangtao/Dropbox/")
;;(cd "~/emacs/home/")  
;;(setq default-directory "~/Dropbox/")

(add-hook 'text-mode-hook 'auto-fill-mode)
;;(setq-default fill-column 80)

;;eshell
;;(setq shell-file-name "cmdproxy")

(setq shell-file-name "/bin/zsh")

;; turn on highlighting current line
(global-hl-line-mode 1)
(set-face-background hl-line-face "gray20")

(require 'tramp)
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))
(setq tramp-default-method "ssh")
(setq password-cache-expiry nil)
(setq tramp-verbose 20)
(setq process-connection-type nil)
(setq tramp-terminal-type "dumb")
(setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")
;;(setq tramp-ssh-controlmaster-options nil)

(setq tramp-ssh-controlmaster-options
      "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

(setq projectile-mode-line " Projectile")
;;(projectile-global-mode 1)
;;(set projectile-mode-line " Projectile")
;;(setq projectile-mode-line nil)
;; (add-hook 'text-mode-hook 'projectile-mode)
;; (add-hook 'prog-mode-hook 'projectile-mode)


(defun xah-open-in-desktop ()
  "Show current file in desktop (OS's file manager).
URL `http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html'
Version 2015-11-30"
  (interactive)
  (cond
   ((string-equal system-type "windows-nt")
    (w32-shell-execute "explore" (replace-regexp-in-string "/" "\\" default-directory t t)))
   ((string-equal system-type "darwin") (shell-command "open ."))
   ((string-equal system-type "gnu/linux")
    (let (
          (process-connection-type nil)
          (openFileProgram (if (file-exists-p "/usr/bin/gvfs-open")
                               "/usr/bin/gvfs-open"
                             "/usr/bin/xdg-open")))
      (start-process "" nil openFileProgram "."))
    ;; (shell-command "xdg-open .") ;; 2013-02-10 this sometimes froze emacs till the folder is closed. For example: with nautilus
    )))

(defun eshell-here ()
  "Opens up a new shell in the directory associated with the
current buffer's file. The eshell is renamed to match that
directory to make multiple eshell windows easier."
  (interactive)
  (let* ((parent (if (buffer-file-name)
                     (file-name-directory (buffer-file-name))
                   default-directory))
         (height (/ (window-total-height) 3))
         (name   (car (last (split-string parent "/" t)))))
    (split-window-vertically (- height))
    (other-window 1)
    (eshell "new")
    (rename-buffer (concat "*eshell: " name "*"))

    (insert (concat "ls"))
    (eshell-send-input)))

(global-set-key (kbd "C-!") 'eshell-here)

(defun eshell/x ()
  (insert "exit")
  (eshell-send-input)
  (delete-window))

;; (defun command-shell ()
;;   "opens a shell which can run programs as if run from cmd.exe from Windows"
;;   (interactive)
;;   (let ((explicit-shell-file-name "cmdproxy")
;;     (shell-file-name "cmdproxy") (comint-dynamic-complete t))
;;     (shell)))

(global-set-key [f2] 'eshell)
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)
(add-hook
 'eshell-mode-hook
 (lambda ()
   (setq pcomplete-cycle-completions nil)))
(setq eshell-cmpl-cycle-completions nil)

;; -*- mode: org -*-
(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

;;Browser
(setq gnus-button-url 'browse-url-generic
      browse-url-generic-program "google-chrome"
      browse-url-browser-function gnus-button-url)

;;(setq line-spacing '0.20)
;; (setq-default line-spacing 2)
(setq-default line-spacing 0)


;;(setq-default major-mode 'org-mode)
(eval-after-load "linum"
  '(set-face-attribute 'linum nil :height 100))

;;(setq default-justificatio 'full)
;;(defalias 'ar #'align-regexp)

;;(transient-mark-mode 1)

(electric-pair-mode t) ;;括号补全
(show-paren-mode t)
(setq show-paren-style 'parenthesis)
;;(setq show-paren-style 'expression) 

;; (require 'autopair)
;; (autopair-global-mode) 

;;cursor
;;(setq default-cursor-type 'bar)
;;(set-cursor-color "#ffffff")

(set-display-table-slot standard-display-table 'wrap ?\ ) 

;;---------------------------
;;SOME CHANGE FOR KEYBINGDING
;;---------------------------
(global-set-key (kbd "C-x C-m") 'smex)
(global-set-key (kbd "C-c C-m") 'smex)
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)


;;(global-unset-key (kbd "C-SPC"))  
;;(global-set-key (kbd "M-SPC") 'set-mark-command)

;;(defalias 'qrr 'query-replace-regexp) ;;define the alias

;;Fullscreen
;; (global-set-key [f11] 'my-fullscreen) 
;; (defun my-fullscreen ()
;;   (interactive)
;; (x-send-client-message
;;  nil 0 nil "_NET_WM_STATE" 32
;;  '(2 "_NET_WM_STATE_FULLSCREEN" 0))
;; )

(defun switch-full-screen (&optional ii)
  (interactive "p")
  (if (> ii 0)
      (shell-command "wmctrl -r :ACTIVE: -badd,fullscreen"))
  (if (< ii 0)
      (shell-command "wmctrl -r :ACTIVE: -bremove,fullscreen"))
  (if (equal ii 0)
      (shell-command "wmctrl -r :ACTIVE: -btoggle,fullscreen")))

;; Use xsel to access the X clipboard apt install xsel
;; From https://hugoheden.wordpress.com/2009/03/08/copypaste-with-emacs-in-terminal/
(unless window-system
  (when (getenv "DISPLAY")
    ;; Callback for when user cuts
    (defun xsel-cut-function (text &optional push)
      ;; Insert text to temp-buffer, and "send" content to xsel stdin
      (with-temp-buffer
        (insert text)
        ;; Use primary the primary selection
        ;; mouse-select/middle-button-click
        (call-process-region (point-min) (point-max) "xsel" nil 0 nil "--primary" "--input")))
    ;; Call back for when user pastes
    (defun xsel-paste-function()
      ;; Find out what is current selection by xsel. If it is different
      ;; from the top of the kill-ring (car kill-ring), then return
      ;; it. Else, nil is returned, so whatever is in the top of the
      ;; kill-ring will be used.
      (let ((xsel-output (shell-command-to-string "xsel --primary --output")))
        (unless (string= (car kill-ring) xsel-output)
          xsel-output)))
    ;; Attach callbacks to hooks
    (setq interprogram-cut-function 'xsel-cut-function)
    (setq interprogram-paste-function 'xsel-paste-function)))


;; Automatically set screen title
;; ref http://vim.wikia.com/wiki/Automatically_set_screen_title
;; FIXME: emacsclient in xterm will have problem if emacs daemon start in screen
;; (defun update-title ()
;;   (interactive)
;;   (if (getenv "STY")	; check whether in GNU screen
;; 	  (send-string-to-terminal (concat "\033k\033\134\033k" "Emacs("(buffer-name)")" "\033\134"))
;; 	(send-string-to-terminal (concat "\033]2; " "Emacs("(buffer-name)")" "\007"))))
;; (add-hook 'post-command-hook 'update-title)

;;bookmark
(setq bookmark-default-file "~/.emacs.d/.bookmarks.bmk")
(setq bookmark-save-flag 1)

;;----------------------------------------------------------------------------------
;;Package. Plugin.
;;----------------------------------------------------------------------------------
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'package)

;; (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                          ;; ("marmalade" . "https://marmalade-repo.org/packages/")
;;                          ("melpa" . "http://melpa.org/packages/")))

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))
;;(package-refresh-contents)
(package-initialize)

;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))

;; (eval-when-compile
;;   (require 'use-package))


;;-------------------Some Provide

;;emacs theme
(require 'init-themes)

;;necessary plugin you must need
(require 'init-plugin)

;--------------------Vim Way To Move - Evil-Mode
;; (require 'init-evil)

;--------------------email
(require 'init-email)

;;-------------------this include programming seetings
(require 'init-python)

;;--------------------------support latex
(require 'init-latex)

;--------------------------org-mode
(require 'init-org)
(require 'init-org-html)
(require 'init-org-pdf)


;;-------------------------some color setting
(require 'init-color)

;;-------------------------some warning fix

(require 'init-fix)


;-------------------------------------------------------

;; (require 'epa-file) 
;; (epa-file-enable) 
;; (setq epa-file-select-keys 0)
;; ;;(setq epa-file-encrypt-to nil) 
;; ;;-*- epa-file-encrypt-to: ("your@email.address") -*-
;; (setq epa-file-cache-passphrase-for-symmetric-encryption t)
;; (setq epa-file-inhibit-auto-save nil) 

;;image
;; (image-type-available-p 'png)
;; (image-type-available-p 'jpeg)
;; (image-type-available-p 'gif)
;; (image-type-available-p 'tiff)
;; (image-type-available-p 'xbm)
;; (image-type-available-p 'xpm)

;; Setting up matlab-mode
;; ;; (add-to-list 'load-path "~/.emacs.d/elpa/matlab-emacs")
;; ;; (load-library "matlab-load")
;; (add-hook 'matlab-mode-hook 'auto-complete-mode)
;; (setq auto-mode-alist
;;       (cons
;;        '("\\.m$" . matlab-mode)
;;        auto-mode-alist))

;;flyspell-----------------------------------
;;apt install aspell
(setq-default ispell-program-name "aspell")
(ispell-change-dictionary "american" t)  


;Backup-----------------------------------------
(setq auto-save-interval 20)
(setq auto-save-visited-file-name t)

;; (setq auto-save-default nil)
;; (setq make-backup-files nil)

(setq backup-directory-alist '(("" . "~/.backup")))
(setq make-backup-files t               ; backup of a file the first time it is saved.
      backup-by-copying t               ; don't clobber symlinks
      version-control t                 ; version numbers for backup files
      delete-old-versions t             ; delete excess backp files silently
      delete-by-moving-to-trash t
      kept-old-versions 6               ; oldest versions to keep when a new numbered backup is made (default: 2)
      kept-new-versions 9               ; newest versions to keep when a new numbered backup is made (default: 2)
      auto-save-default t               ; auto-save every buffer that visits a file
      auto-save-timeout 7              ; number of seconds idle time before auto-save (default: 30)
      auto-save-interval 200            ; number of keystrokes between auto-saves (default: 300)
      )

;;Save---------------------------------------------
(super-save-mode +1)
;; ;; (setq auto-save-default nil)
(setq super-save-auto-save-when-idle t)

;; (defun full-auto-save ()
;; 	  (interactive)
;; 	  (save-excursion
;; 		(dolist (buf (buffer-list))
;; 		  (set-buffer buf)
;; 		  (if (and (buffer-file-name) (buffer-modified-p))
;; 			  (basic-save-buffer)))))
;; 	(add-hook 'auto-save-hook 'full-auto-save)
;;-----------------------------------------------------------


;; '(markdown-command
;;   "/usr/bin/pandoc -c ~/Dropbox/Linux/css/markdown/Clearness.css")
;; '(matlab-shell-command-switches (quote ("-nodesktop -nosplash")))
;; '(org-agenda-files
;;   (quote
;;    ("~/Dropbox/Txt/todo.txt" "~/Dropbox/Txt/inbox.txt")))




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default)))
 '(org-agenda-files
   (quote
    ("~/Dropbox/Txt/inbox.txt" "~/Dropbox/Txt/todo.txt")))
 '(package-selected-packages
   (quote
    (ein smartparens evil-mu4e ido-yes-or-no notmuch counsel swiper color-theme-sanityinc-tomorrow blackboard-theme org projectile dracula-theme evil-nerd-commenter evil-escape evil evil-easymotion evil-leader evil-magit evil-matchit evil-surround expand-region ujelly-theme helm-swoop undo-tree rainbow-delimiters use-package ox-reveal multiple-cursors esup window-number ace-jump-mode jedi zenburn-theme writeroom-mode window-numbering websocket web-mode super-save solarized-theme smooth-scrolling smex smart-mode-line-powerline-theme semi rtags request relative-line-numbers python-mode py-autopep8 pos-tip neotree multi-term minimap matlab-mode markdown-mode magit linum-relative key-chord jdee htmlize ht helm-ag gntp focus emmet-mode elpy cmake-ide clang-format cl-generic cal-china-x autopair auto-complete-clang auto-complete-c-headers ag ace-window ace-pinyin ace-isearch)))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(truncate-partial-width-windows nil)
 '(user-full-name "Tao Zhang")
 '(user-mail-address "ztao1991@gmail.com"))
