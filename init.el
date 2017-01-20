;;-------------------------------------------------------
;;startup
;;-------------------------------------------------------

;; (define-key emacs-lisp-mode-map (kbd "C-x C-r") 'eval-region)
;; (define-key lisp-interaction-mode-map (kbd "C-x C-r") 'eval-region)
;; (define-key org-mode-map (kbd "<tab>") 'org-cycle)
;;(server-start)
;;(desktop-save-mode) 
;; (defun frame-setting ()
;;   (set-default-font "Monaco-12")
;;   (set-fontset-font "fontset-default" 'han '("PingFang SC"))
;;   (set-background-color "ivory")
;;   (set-cursor-color "red")
;;   (set-mouse-color "goldenrod")
;;   (set-foreground-color "black")
;;   )

;;(add-to-list 'default-frame-alist '(tty-color-mode  . -1))

;; (if (and (fboundp 'daemonp) (daemonp))
;;     (add-hook 'after-make-frame-functions
;; 	      (lambda (frame)
;; 		(with-selected-frame frame
;; 		  (frame-setting))))
;;   (frame-setting))

(setq frame-title-format
      (list '(:eval (projectile-project-name)) 
	    "(●—●) I'm Here @ "
	    '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;;(set-fontset-font "fontset-default" 'gb18030' ("Microsoft YaHei" . "unicode-bmp"))

(setq initial-scratch-message "")
(defun display-startup-echo-area-message ()
  (message "Just Type For Fun Or Hacking The Write."))

(setq x-select-enable-clipboard t)

;;(setq visible-bell 1)
;; Disable the splash screen (to enable it agin, replace the t with 0)
;;(setq inhibit-splash-screen t)

(tool-bar-mode 0)  
(menu-bar-mode 0)  
(scroll-bar-mode 0)  
;;(set-scroll-bar-mode 'right)
(visual-line-mode 1)

(fset 'yes-or-no-p 'y-or-n-p)

(add-to-list 'default-frame-alist '(height . 22))
(add-to-list 'default-frame-alist '(width . 56))

;;(setq default-directory "C:/Users/zhangtao/Dropbox/")
;;(cd "~/emacs/home/")  
(setq default-directory "~/Dropbox/")

(setq-default fill-column 80)


;;eshell
;;(setq shell-file-name "cmdproxy")
(setq shell-file-name "/bin/zsh")

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
      browse-url-generic-program "chromium"
      browse-url-browser-function gnus-button-url)

;;(setq line-spacing '0.20)
(setq-default line-spacing 2)

(global-visual-line-mode 1)
(setq inhibit-startup-screen t)
(setq ring-bell-function 'ignore)
(set-fringe-mode '(0 . 0))

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

;;---------------------------
;;fonts
;;---------------------------
;;(set-default-font "Consolas-11")
;;(set-default-font "Source Code Pro:style=Regular-11")
;;(set-default-font "Inconsolata-12")
(set-default-font "Monaco-9")
;;(set-default-font "Menlo-10")
;;(set-default-font "Courier New:style=Bold-12")
;;(set-default-font "Roboto Mono-11")

;; (set-face-attribute
;;  'default nil :font "Consolas 11")
;; (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;   (set-fontset-font (frame-parameter nil 'font)
;;                     charset
;;                     (font-spec :family "PingFang SC" :size 10)))


;;(set-fontset-font "fontset-default" 'chinese-gbk "WenQuanYi Micro Hei Mono")
;;(set-fontset-font "fontset-default" 'han "Microsoft Yahei")
;;(set-fontset-font "fontset-default" 'han '("PingFang SC"))
(set-fontset-font "fontset-default" 'han '("Hiragino Sans GB"))
;(set-fontset-font "fontset-default" 'han "WenQuanYi Micro Hei Mono 12"))

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
;; Mimic Vim's set paste
;; From http://stackoverflow.com/questions/18691973/is-there-a-set-paste-option-in-emacs-to-paste-paste-from-external-clipboard
(defvar ttypaste-mode nil)
(add-to-list 'minor-mode-alist '(ttypaste-mode " Paste"))
(defun ttypaste-mode ()
  (interactive)
  (let ((buf (current-buffer))
	(ttypaste-mode t))
	(with-temp-buffer
	  (let ((stay t)
		(text (current-buffer)))
	(redisplay)
	(while stay
	  (let ((char (let ((inhibit-redisplay t)) (read-event nil t 0.1))))
		(unless char
		  (with-current-buffer buf (insert-buffer-substring text))
		  (erase-buffer)
		  (redisplay)
		  (setq char (read-event nil t)))
		(cond
		 ((not (characterp char)) (setq stay nil))
		 ((eq char ?\r) (insert ?\n))
		 ((eq char ?\e)
		  (if (sit-for 0.1 'nodisp) (setq stay nil) (insert ?\e)))
		 (t (insert char)))))
	(insert-buffer-substring text)))))

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
;;Plugin
;;----------------------------------------------------------------------------------

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ;; ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))
;;(package-refresh-contents)
(package-initialize)

;----------------------
;Themes
;----------------------

;;color-themes
;; (add-to-list 'load-path "~/.emacs.d/elpa/color-theme-6.6.0/")
;; (require 'color-theme)
;; (color-theme-initialize)
;; ;; (color-theme-tangotango)
;; (color-theme-matrix)

;;solarized
;; (setq solarized-termcolors 256)
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/color-theme-solarized/")
;; (load-theme 'solarized t)

;; (add-hook 'after-make-frame-functions
;;           (lambda (frame)
;;             (let ((mode (if (display-graphic-p frame) 'light )))
;;               (set-frame-parameter frame 'background-mode mode)
;;               (set-terminal-parameter frame 'background-mode mode))
;;              (enable-theme 'solarized)))


;; (load-theme 'solarized t)
;; (set-frame-parameter nil 'background-mode 'dark)    
;; (enable-theme 'solarized)

;;colors
(setq cursor-type 'box)

(set-background-color "ivory")
(set-foreground-color "black")

(set-face-foreground 'isearch "red")
(set-face-background 'isearch "#ffff00")
(set-face-foreground 'lazy-highlight "black")
(set-face-background 'lazy-highlight "#ffff00")

;;(setq frame-background-mode 'light)
;;(setq frame-background-mode 'dark)

;; (set-background-color "black")
;; ;;(set-background-color "#fffff0")
;; (set-foreground-color "#32cd32")

(set-cursor-color "red")
(set-mouse-color "goldenrod")

;;zenburn
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load "~/.emacs.d/themes/color-theme-tomorrow.el")
;; ;;(load "~/.emacs.d/themes/tomorrow-night-bright-theme.el")

;; ;;(load "~/.emacs.d/themes/ujelly-theme.el")
;; ;;(load "~/.emacs.d/themes/monokai-theme.el")
;; (load-theme 'zenburn t)
;; (set-cursor-color "red")


;;--------------------------
;;mode-line
;;--------------------------
;;(format-mode-line header-line-format "_")

;;(setq-default mode-line-format nil)

;;(set-face-attribute 'mode-line nil  :height 90)
;;(set-face-inverse-video-p 'vertical-border nil)

(set-face-background 'vertical-border (face-background 'default))
(set-face-background 'vertical-border "gray") ;;default
;;(set-face-background 'vertical-border "#284b54") ;;solarized
;;(set-face-background 'vertical-border "gray37") ;;37-50 ;;zenburn
;;(set-face-background 'vertical-border "gray15")

(set-face-foreground 'vertical-border (face-background 'vertical-border))
(set-display-table-slot standard-display-table
                        'vertical-border 
                        (make-glyph-code ?│))

;;(set-face-background 'fringe "#809088")

;;smart-mode-line------------------------
;;(display-time-mode)
;; (require 'smart-mode-line)
;; ;; (require 'powerline)
;; (setq sml/no-confirm-load-theme t)
;; ;; ;;(setq sml/theme 'dark)
;; ;;(setq sml/theme 'light)
;; ;; ;;(setq sml/theme 'respectful)
;; ;;(setq sml/theme 'powerline)
;; (setq sml/theme 'light-powerline)
;; (setq sml/mode-width 0)
;; (setq sml/name-width 20)
;; ;;(setq sml/theme 'powerline)
;; (sml/setup)

;;(rich-minority-mode 1)
(setf rm-blacklist "")
(setq rm-blacklist '(" GitGutter" " MRev" " company" " mate" " Projectile"))

(set-face-attribute 'mode-line nil
                    :foreground "black"
                    :background "ivory"
                    :box nil)
(set-face-attribute 'modeline-inactive nil
                    :foreground "black"
                    :background "ivory"
                    :box nil)

    
(setq rm-excluded-modes
	  '(" Guide"			;; guide-key mode
	" hc"				;; hardcore mode
	" AC"				;; auto-complete
	" vl"				;; global visual line mode enabled
	" Wrap"				;; shows up if visual-line-mode is enabled for that buffer
	" Omit"				;; omit mode in dired
	" yas"				;; yasnippet
	" drag"				;; drag-stuff-mode
	" VHl"				;; volatile highlights
	" ctagsU"			;; ctags update
	" Undo-Tree"			;; undo tree
	" wr"				;; Wrap Region
	" SliNav"			;; elisp-slime-nav
	" Fly"				;; Flycheck
	" PgLn"				;; page-line-break
	" GG"				;; ggtags
	" ElDoc"			;; eldoc
	" hl-highlight"			;; hl-anything
	))


;;-----------------------
;;deft-mode
(require 'deft)
(setq deft-extensions '("txt" "tex" "org" "py"))
(setq deft-directory "~/Dropbox/Txt/")
(setq deft-recursive t)
(global-set-key [f8] 'deft)

;;relative-number------------------------
;; (require 'linum-relative)
;;     (linum-on)
;; (add-hook 'prog-mode-hook 'relative-line-numbers-mode t)
;; (add-hook 'prog-mode-hook 'line-number-mode t)
;; (add-hook 'prog-mode-hook 'column-number-mode t)

;; (setq
;;  linum-relative-current-symbol ""
;;  linum-relative-format "%3s "
;;  linum-delay t)

;; (set-face-attribute 'linum-relative-current-face nil
;;                     :weight 'extra-bold
;;                     :foreground nil
;;                     :background nil
;;                     :inherit '(hl-line default)))

;;-----------------
;;Calendar
;;-----------------

(require 'cal-china-x)
(setq mark-holidays-in-calendar t)
(setq cal-china-x-important-holidays cal-china-x-chinese-holidays)
(setq calendar-holidays cal-china-x-important-holidays)
(setq my-holidays '((holiday-fixed 2 14 "情人节") (holiday-fixed 9 10 "教师节") (holiday-float 6 0 3 "父亲节")
		    (holiday-lunar 1 1 "春节" 0) (holiday-lunar 1 15 "元宵节" 0) (holiday-solar-term "清明" "清明节") (holiday-lunar 5 5 "端午节" 0) (holiday-lunar 7 7 "七夕情人节" 0) (holiday-lunar 8 15 "中秋节" 0)
		    (holiday-lunar 12 23 "妈妈生日" 0) (holiday-lunar 5 5 "爸爸生日" 0) (holiday-lunar 10 17 "姐姐生日" 0) (holiday-lunar 10 18 "姐夫生日" 0) (holiday-fixed 10 29 "宝宝生日") ))
(setq calendar-holidays my-holidays)
;;(holiday-lunar 9 17 "宝宝生日" 0)

(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

;;-----------------------
;;ido-mode
;;-----------------------
(require 'ido)
(ido-mode t)
(setq ido-file-extensions-order '(".org" ".txt" ))
(setq ido-use-filename-at-point 'guess)
(setq ido-file-extensions-order '(".txt" ".org" ".py" ".emacs" ".xml" ".el" ".ini" ".cfg" ".cnf" "" t))

(defun ido-bookmark-jump (bname)
  "*Switch to bookmark interactively using `ido'."
  (interactive (list (ido-completing-read "Bookmark: " (bookmark-all-names) nil t)))
  (bookmark-jump bname))
(global-set-key (kbd "C-x r l") 'ido-bookmark-jump)
;;(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

;;(setq ido-separator "\n")
(setq ido-enable-flex-matching t)
;;(setq max-mini-window-height 0.5)

;;(setq ido-use-virtual-buffers t)

;;keep a list of recently opened files                                                                      
;; (require 'recentf)
;; (setq recentf-auto-cleanup 'never)
;; (recentf-mode 1)
;; (setq-default recent-save-file "~/.emacs.d/recentf")

;; (defun ido-recentf-open ()
;;   "Use `ido-completing-read' to find a recent file."
;;   (interactive)
;;   (if (find-file (ido-completing-read "Find recent file: " recentf-list))
;;       (message "Opening file...")
;;     (message "Aborting")))

;; (global-set-key (kbd "C-x C-r") 'ido-recentf-open)
;; (setq recentf-max-saved-items 150)

;---------------
;smex
;---------------
(add-to-list 'load-path "~/.emacs.d/elpa/smex/")
(require 'smex)
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;---------------
;;undo-tree c-x u
;;---------------
(global-undo-tree-mode)

;;----------------
;;windows—switch
;;----------------

;; (add-to-list 'load-path "~/.emacs.d/elpa/")
;; (require 'unicad)

(global-set-key (kbd "M-p") 'ace-window)

;;fringer
;;(set-window-fringes (selected-window) 0 0 nil)

;; (custom-set-faces
;;   '(default ((t (:backgroun "black" :foreground "grey"))))
;;   '(fringe (( (:background "black")))))

;;smooth-scroll---------------------------------
;; (require 'smooth-scrolling)
;; (smooth-scrolling-mode 1)
;; (setq scroll-margin 5
;;       scroll-conservatively 9999
;;       scroll-step 1)


;;---------------------------------------------------------------------------------


;;-----------------------
;;Ag apt-get install silversearcher-ag
;;-----------------------
(require 'ag)
(setq ag-highlight-search t)
(setq ag-reuse-window 't)
(setq ag-reuse-buffers 't)

;;-----------------------
;;helm-mode Helm 作为前端使用 helm-swoop+helm-ag
;;-----------------------
;;(setq tramp-mode nil)

(require 'helm-config)
(require 'helm)
(helm-mode t)

(defadvice helm-display-mode-line (after undisplay-header activate) (setq header-line-format nil))
(defun helm-display-mode-line (source &optional force) (setq mode-line-format nil))

(setq helm-ff-transformer-show-only-basename nil
      helm-adaptive-history-file             "~/.emacs.d/helm-history.txt"
      helm-yank-symbol-first                 t
      helm-move-to-line-cycle-in-source      t
      helm-M-x-fuzzy-match                   t
;;      helm-recentf-fuzzy-match               t
;;      helm-ff-file-name-history-use-recentf  t
      helm-buffers-fuzzy-matching            t
      helm-ff-auto-update-initial-value      t)

;; (autoload 'helm-descbinds      "helm-descbinds" t)
;; (autoload 'helm-eshell-history "helm-eshell"    t)
;; (autoload 'helm-esh-pcomplete  "helm-eshell"    t)

;; (global-set-key (kbd "C-h a")    #'helm-apropos)
;; (global-set-key (kbd "C-h i")    #'helm-info-emacs)
;; (global-set-key (kbd "C-h b")    #'helm-descbinds)

;; (add-hook 'eshell-mode-hook
;;           #'(lambda ()
;;               (define-key eshell-mode-map (kbd "TAB")     #'helm-esh-pcomplete)
;;               (define-key eshell-mode-map (kbd "C-c C-l") #'helm-eshell-history)))

;; (global-set-key (kbd "C-x b")   #'helm-mini)
;; (global-set-key (kbd "C-x C-b") #'helm-buffers-list)
;; (global-set-key (kbd "M-x") #'helm-M-x)
;; (global-set-key (kbd "C-x C-f") #'helm-find-files)
;; (global-set-key (kbd "C-x C-r") #'helm-recentf)
;; (global-set-key (kbd "C-x r l") #'helm-filtered-bookmarks)

;;(global-set-key (kbd "M-y")     #'helm-show-kill-ring)

;; (global-set-key (kbd "M-i") 'helm-swoop)
;; (global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)

(global-set-key (kbd "M-s i")   #'helm-swoop)
(global-set-key (kbd "M-s /")   #'helm-multi-swoop)
(global-set-key (kbd "M-s /") 'helm-multi-swoop-all)
(global-set-key (kbd "M-s a")   #'helm-ag) ;;apt-get install silversearcher-ag

;;(global-set-key (kbd "C-s")   #'helm-swoop)
;; (global-set-key (kbd "M-s /")   #'helm-multi-swoop)
;; (global-set-key (kbd "M-s /") 'helm-multi-swoop-all)

(helm-autoresize-mode 1)

;-------------------------------------------------------------------------------------------------------------------------
;evil-mode
;-------------------------------------------------------------------------------------------------------------------------

;; (setq evil-toggle-key "")   ; remove default evil-toggle-key C-z, manually setup later
;; (setq evil-want-C-i-jump nil)   ; don't bind [tab] to evil-jump-forward

;; (add-to-list 'load-path "~/.emacs.d/elpa/evil-20160608.229/")
;; (require 'evil) 
;; (evil-mode 1) 

;; ;; remove all keybindings from insert-state keymap, use emacs-state when editing
;; (setcdr evil-insert-state-map nil)
 
;; ;; ESC to switch back normal-state
;; (define-key evil-insert-state-map [escape] 'evil-normal-state)
 
;; ;; TAB to indent in normal-state
;; (define-key evil-normal-state-map (kbd "TAB") 'indent-for-tab-command)
 
;; ;; Use j/k to move one visual line insted of gj/gk
;; (define-key evil-normal-state-map (kbd "<remap> <evil-next-line>") 'evil-next-visual-line)
;; (define-key evil-normal-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)
;; (define-key evil-motion-state-map (kbd "<remap> <evil-next-line>") 'evil-next-visual-line)
;; (define-key evil-motion-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)

;; ;; (add-to-list 'evil-emacs-state-modes 'markdown-mode)
;; (add-to-list 'evil-emacs-state-modes 'magit-mode)
;; ;;(add-to-list 'evil-emacs-state-modes 'org-mode)
;; (add-to-list 'evil-emacs-state-modes 'el-get-package-menu-mode)

;; ;;(setq evil-default-state 'emacs)
;; (define-key evil-emacs-state-map (kbd "C-o") 'evil-execute-in-normal-state)
;; ;;(define-key evil-normal-state-map "M-x" 'execute-extended-command)

;; ;;(define-key evil-motion-state-map ";" 'smex)
;; (define-key evil-motion-state-map ":" 'evil-ex)
;; (define-key evil-ex-map "e" 'ido-find-file)
;; ;;(define-key evil-ex-map "q" 'ido-kill-buffer)
;; (global-set-key (kbd "C-s") 'evil-write)

;; ;;magit
;; ;;(evil-set-initial-state 'magit-mode 'normal)
;; ;;(evil-set-initial-state 'magit-status-mode 'normal)
;; ;;(evil-set-initial-state 'magit-diff-mode 'normal)
;; ;;(evil-set-initial-state 'magit-log-mode 'normal)
;; ;;(evil-define-key 'normal magit-mode-map
;; ;;  "j" 'magit-goto-next-section
;; ;;  "k" 'magit-goto-previous-section)
;; ;;(evil-define-key 'normal magit-log-mode-map
;; ;;  "j" 'magit-goto-next-section
;; ;;  "k" 'magit-goto-previous-section)
;; ;;(evil-define-key 'normal magit-diff-mode-map
;; ;;  "j" 'magit-goto-next-section
;; ;;  "k" 'magit-goto-previous-section)


;; (evil-set-initial-state 'ibuffer-mode 'normal)
;; (setq evil-insert-state-cursor 'box)

;; ;; esc quits
;; (defun minibuffer-keyboard-quit ()
;;   (interactive)
;;   (if (and delete-selection-mode transient-mark-mode mark-active)
;;       (setq deactivate-mark  t)
;;     (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
;;     (abort-recursive-edit)))
;; (define-key evil-normal-state-map [escape] 'keyboard-quit)
;; (define-key evil-visual-state-map [escape] 'keyboard-quit)
;; (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
;; (global-set-key [escape] 'evil-exit-emacs-state)

;; ;; change mode-line color by evil state
;; ;; (lexical-let ((default-color (cons (face-background 'mode-line)
;; ;;                                    (face-foreground 'mode-line))))
;; ;;   (add-hook 'post-command-hook
;; ;;     (lambda ()
;; ;;       (let ((color (cond ((minibufferp) default-color)
;; ;;                          ((evil-insert-state-p) '("#e80000" . "#ffffff"))
;; ;;                          ((evil-emacs-state-p)  '("#af00d7" . "#ffffff"))
;; ;;                          ((buffer-modified-p)   '("#006fa0" . "#ffffff"))
;; ;;                          (t default-color))))
;; ;;         (set-face-background 'mode-line (car color))
;; ;;         (set-face-foreground 'mode-line (cdr color))))))

;; ;; (setq evil-emacs-state-cursor '("red" box))
;; ;; (setq evil-normal-state-cursor '("green" box))
;; ;; (setq evil-visual-state-cursor '("orange" box))
;; ;; (setq evil-insert-state-cursor '("red" bar))
;; ;; (setq evil-replace-state-cursor '("red" bar))
;; ;; (setq evil-operator-state-cursor '("red" hollow))

;; (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
;; (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
;; (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
;; (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

;; (define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
;; (define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

;; ;; ;;evil-leader
;; (require 'evil-leader)
;; (global-evil-leader-mode)
;; ;;(evil-leader/set-leader ";")
;; (evil-leader/set-leader ",")
;; ;;(evil-leader/set-leader "<SPC>")
;; (setq evil-leader/in-all-states 1)

;; (evil-leader/set-key "e" 'evil-ace-jump-word-mode) ; ,e for Ace Jump (word)
;; (evil-leader/set-key "l" 'evil-ace-jump-line-mode) ; ,l for Ace Jump (line)
;; (evil-leader/set-key "x" 'evil-ace-jump-char-mode) ; ,x for Ace Jump (char)

;; (evil-leader/set-key "h" 'dired-jump)
;; (evil-leader/set-key "v" 'split-window-right)
;; (evil-leader/set-key "," 'other-window)
;; (evil-leader/set-key "b" 'ibuffer)
;; (evil-leader/set-key "x" 'helm-M-x)

;; (setq-default tab-width 4 indent-tabs-mode nil)
;; (define-key global-map (kbd "RET") 'newline-and-indent)
;; (setq evil-move-cursor-back nil)

;; (require 'evil-surround)
;; (global-evil-surround-mode 1)

;; (require 'key-chord)
;; ;;(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)
;; (setq key-chord-two-keys-delay 0.5)
;; (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
;; (key-chord-mode 1)

;;-------------------------------------------------------------------------------------------------------------------------

;;expand-region

(require 'expand-region)
(global-set-key (kbd "C-c =") 'er/expand-region)

;--------------
;ace-jump
;--------------
(require 'ace-pinyin)
(setq ace-pinyin-use-avy nil)
(ace-pinyin-global-mode +1)

(add-to-list 'load-path "which-folder-ace-jump-mode-file-in/")
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
;;(global-set-key (kbd "C-c SPC") 'ace-jump-mode)

(with-eval-after-load 'org
    (define-key org-mode-map (kbd "C-c SPC") nil))
;; When org-mode starts it (org-mode-map) overrides the ace-jump-mode.

;; (add-hook 'org-mode-hook
;;           (lambda ()
;;             (local-set-key (kbd "\C-c SPC") 'ace-jump-mode)))

;;--------------
;;window-number
;;--------------
;; (require 'window-number)
;; (window-number-mode)

;----------------
;yasnippet
;----------------

(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet/")
(require 'yasnippet)
(yas-global-mode 1)

;----------------
;auto-complete
;----------------

(add-to-list 'load-path "~/.emacs.d/elpa/popup-el/")
(require 'popup)

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete/dict")
(ac-config-default)

;; (defun my:ac-c-headers-init ()
;;   (require 'auto-complete-c-headers)
;;   (add-to-list 'ac-sources 'ac-source-c-headers))

;; (add-hook 'c++-mode-hook 'my:ac-c-headers-init)
;; (add-hook 'c-mode-hook 'my:ac-c-headers-init)

;;(add-to-list 'ac-modes 'org-mode)
(ac-set-trigger-key "TAB")

;----------------
;python+c languge
;----------------
;;we should install ipython
;; (add-to-list 'load-path "~/.emacs.d/elpa/python-mode")
;; (require 'python-mode)

(elpy-enable)
;;(elpy-use-ipython)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
;;(add-hook 'after-init-hook #'global-flycheck-mode)

(setq elpy-rpc-python-command "python3")
(setq python-shell-interpreter "python3")
;;(elpy-use-ipython "ipython3")

;;apt-get install ipython then M-x edit-abbrevs
;;(require 'ipython)
;;(setq-default py-shell-name "ipython")

;;pip install autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(require 'tramp)
(add-to-list 'Info-default-directory-list "~/.emacs.d/tramp/info/")
;-----------------
;Java + Jdee
;-----------------
(add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")
(autoload 'jde-mode "jde" "JDE mode" t)
(setq auto-mode-alist
      (append '(("\\.java\\'" . jde-mode)) auto-mode-alist))

;-----------------
;markdown-mode
;-----------------
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(autoload 'gfm-mode "gfm-mode"
  "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
;;(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(setq markdown-enable-math t)

;-------------
;org-mode
;-------------

;;(require 'org-latex)
;; (require 'org-bullets)
;; (setq org-bullets-face-name (quote org-bullet-face))
;; (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;; (setq org-bullets-face-name (quote org-bullet-face))
;; ;; (set-face-attribute 'org-bullet-face 
;; ;;    t :foreground "burlywood" :weight 'normal :height 1.6)

;; ;;(setq org-bullets-bullet-list '("◉" "◎" "⚫" "○" "►" "◇"))
;; (setq org-bullets-bullet-list '("◉" "○" "◎" "●" "◯"))
;; (setq org-ellipsis "↴");; ⤵ ▼, ↴, , ∞, ⬎, ⤷, ⤵ ≫

(setq org-startup-indented t)

(setq org-log-done 'time)
;;(setq org-log-done 'note)

;;(setq org-image-actual-width 600)
(add-hook 'org-mode-hook   
	  (lambda () (setq truncate-lines nil)))  
;; (add-hook 'org-mode-hook '(lambda () 
;; (setq visual-line-fringe-indicators t) 
;; (visual-line-mode) 
;; (if visual-line-mode 
;; (setq word-wrap nil)))) 

;;(add-hook 'org-mode-hook (lambda () (variable-pitch-mode t)))
;;org-mode display
(setq org-fontify-done-headline t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-done ((t (:foreground "PaleGreen" :weight normal :strike-through t))))
 '(org-headline-done ((((class color) (min-colors 16) (background dark)) (:foreground "LightSalmon" :strike-through t)))))

(setq org-startup-indented t)
(setq org-hide-leading-stars t)

;;source code
(org-babel-do-load-languages
 'org-babel-load-languages
 '((lisp . t)))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((latex . t)))

(setq org-src-fontify-natively t)

;;Text
;; (add-to-list 'org-emphasis-alist
;;              '("*" (:foreground "red")
;;                ))
;; (setq org-emphasis-alist
;;       (cons '("*" '(:emphasis t :foreground "yellow"))
;;             (delete* "*" org-emphasis-alist :key 'car :test 'equal)))
(setq org-hide-emphasis-markers t)

;;org-capture

;;org-capture-extension

;; (load "~/.emacs.d/elpa/org-contacts.el")
;; (require 'org-contacts)

;; (load "~/.emacs.d/elpa/outline-presentation.el")
;; (require 'outline-presentation)

;(setq org-default-notes-file (concat org-directory "~/Dropbox/inbox.txt"))
;;(define-key global-map [f12] 'org-capture)
(define-key global-map "\C-cc" 'org-capture)
(setq org-capture-templates
      `(("t" "Todo" entry (file+headline "~/Dropbox/Txt/inbox.txt" "Todo")
	 "* TODO %?\n%U\n%a\n")
        ("n" "Note" entry (file+headline "~/Dropbox/Txt/inbox.txt" "Notes")
	 "* %? \n%U\n%a\n")
	("c" "Contact" entry (file+headline "~/Dropbox/Txt/contacts.txt" "Contact")
	 "* 
:PROPERTIES:
:EMAIL: 
:URL:
:MOBILE:
:LOCATION:
:BIRTHDAY: 
:NOTE:
:END:")))

(global-set-key "\C-ca" 'org-agenda)
(setq org-export-coding-system 'utf-8)
(setq diary-file "~/Dropbox/Txt/diary")
(setq org-agenda-include-diary t)
;;(setq org-agenda-files '("~/org"))

;;org-timeline
;; (defvar org-timeline-files nil
;;   "The files to be included in `org-timeline-all-files'. Follows
;;   the same rules as `org-agenda-files'")

;; (setq org-timeline-files '("/home/zhangtao/Dropbox/log/org/"))

;; (add-to-list 'org-agenda-custom-commands
;;              '("R" "Week in review"
;;                 agenda ""
;;                 ;; agenda settings
;;                 ((org-agenda-span 'week)
;;                   (org-agenda-start-on-weekday 0) ;; start on Sunday
;;                   (org-agenda-overriding-header "Week in Review")
;;                   (org-agenda-files 
;;                     (let ((org-agenda-files org-timeline-files))
;;                           (org-agenda-files nil 'ifmode)))
;;                   (org-agenda-start-with-log-mode t)
;;                   (org-agenda-log-mode-items '(clock state))
;;                   (org-agenda-archives-mode t) ; include archive files
;;                 )))


;; (require 'org-crypt)
;; (org-crypt-use-before-save-magic)
;; (setq org-tags-exclude-from-inheritance (quote("crypt")))
;; (setq org-crypt-key nil)

;----------------------
;auctex
;----------------------

(add-to-list 'load-path "~/.emacs.d/elpa/auctex-11.89/")
(load "auctex.el" nil t t)
(load "preview.el" nil t t)
(require 'tex-mik)
(require 'tex)

(TeX-global-PDF-mode t)
(setq preview-image-type 'svg)
;; only start server for okular comms when in latex mode
(add-hook 'LaTeX-mode-hook 'server-start)
(setq TeX-PDF-mode t) ;; use pdflatex instead of latex
(setq TeX-newline-function 'newline-and-indent)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Standard emacs/latex config
;; http://emacswiki.org/emacs/AUCTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq-default TeX-engine 'xetex)
(setq-default TeX-PDF-mode t)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

; enable auto-fill mode, nice for text
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Enable synctex correlation
(setq TeX-source-correlate-method 'synctex)
;; Enable synctex generation. Even though the command shows
;; as "latex" pdflatex is actually called
;;(custom-set-variables '(LaTeX-command "latex -synctex=1") )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Use Okular as the pdf viewer. Build okular 
;; command, so that Okular jumps to the current line 
;; in the viewer.
(setq TeX-view-program-selection
 '((output-pdf "PDF Viewer")))
(setq TeX-view-program-list
 '(("PDF Viewer" "okular --unique %o#src:%n%b")))

;; (setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
;; 			      "xelatex -interaction nonstopmode %f"))

;;(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))

;;(setq org-latex-create-formula-image-program 'dvipng)

(setq org-latex-create-formula-image-program 'imagemagick)
(add-hook 'LaTeX-mode-hook (lambda ()
			     (push 
			      '("Latex_outdir" "%`latex -auxt-directory=/tmp %(mode)%' %t" 
				TeX-run-TeX nil (latex-mode doctex-mode) 
				:help "Run pdflatex with output in /tmp")
			      TeX-command-list)))

;;(setq org-latex-logfiles-extensions (quote ("lof" "lot" "tex~" "aux" "idx" "log" "out" "toc" "nav" "snm" "vrb" "dvi" "fdb_latexmk" "blg" "brf" "fls" "entoc" "ps" "spl" "bbl" "pyg")))
(setq org-latex-logfiles-extensions (quote ("lof" "lot" "aux" "idx" "log" "out" "toc" "nav" "snm" "vrb" "dvi" "fdb_latexmk" "blg" "brf" "fls" "entoc" "ps" "spl" "bbl" "pyg")))

(advice-add 'org-latex-compile :after #'delete-file)

;;-------------------------------------------------------
;;org-latex
;;-------------------------------------------------------

(require 'ox-latex)
  (add-to-list 'org-latex-packages-alist '("" "minted"))
  (setq org-latex-listings 'minted)
  (setq org-latex-pdf-process
        '("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
;; (setq org-latex-minted-options
;;         '(("frame" "lines") ("linenos=true")))
(setq org-latex-custom-lang-environments
           '(
            (emacs-lisp "common-lispcode")
             ))
(setq org-latex-minted-options
           '(("frame" "")
             ("fontsize" "\\scriptsize")
             ("linenos=false" "")))

;; (setq org-latex-to-pdf-process 
;;       '("xelatex --shell-escape -interaction nonstopmode %f"
;; 	"xelatex --shell-escape -interaction nonstopmode %f"))


;;(setq org-src-fontify-natively t)


;;-------------------------------------------------------

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

;;flyspell
;; (let ((langs '("american" "francais" "brasileiro")))
;;   (    setq lang-ring (make-ring (length langs)))
;;   (dolist (elem langs) (ring-insert lang-ring elem)))
;; (defun cycle-ispell-languages ()
;;   (interactive)
;;   (let ((lang (ring-ref lang-ring -1)))
;;     (ring-insert lang-ring lang)
;;     (ispell-change-dictionary lang)))
;; (global-set-key [f6] 'cycle-ispell-languages)


;; Setting up matlab-mode
;; (add-to-list 'load-path "~/.emacs.d/elpa/matlab-emacs")
;; (load-library "matlab-load")
(add-hook 'matlab-mode-hook 'auto-complete-mode)
(setq auto-mode-alist
      (cons
       '("\\.m$" . matlab-mode)
       auto-mode-alist))

;------------------------------------------------------------
;backup
;------------------------------------------------------------

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

;;-----------------------------------------------------------
;;auto-save
;;-----------------------------------------------------------
(super-save-mode +1)
;; (setq auto-save-default nil)
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

;;-----------------------------------------------------------
;;Email
;;-----------------------------------------------------------
;; (require 'notmuch)
;; (require 'gnus-art)

;; the exact path may differ -- check it
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
;; (require 'org-mu4e)
;; ;;store link to message if in header view, not to header query
;; (setq org-mu4e-link-query-in-headers-mode nil)

;; (require 'mu4e)

;; ;; default
;; (setq mu4e-maildir (expand-file-name "~/Mail"))

;; (setq mu4e-drafts-folder "/[Gmail].Drafts")
;; (setq mu4e-sent-folder   "/[Gmail].Sent Mail")
;; (setq mu4e-trash-folder  "/[Gmail].Trash")

;; ;; don't save message to Sent Messages, GMail/IMAP will take care of this
;; (setq mu4e-sent-messages-behavior 'delete)

;; ;; setup some handy shortcuts
;; (setq mu4e-maildir-shortcuts
;;       '(("/INBOX"             . ?i)
;;         ("/[Gmail].Sent Mail" . ?s)
;;         ("/[Gmail].Trash"     . ?t)))

;; ;; allow for updating mail using 'U' in the main view:
;; (setq mu4e-get-mail-command "offlineimap")
;; (setq mu4e-html2text-command "/usr/local/bin/w3m -T text/html")

;;(ido-completing-read "Complete contact: " (mu4e~compose-complete-contact))
;; (defun select-and-insert-contact ()
;;   (interactive)
;;   (insert (ido-completing-read "Contact: " mu4e~contacts-for-completion)))

;; something about ourselves
;; I don't use a signature...
;; (setq
;;  user-mail-address "ztao1991@gmail.com"
;;  user-full-name  "zhangtao"
;;  ;; message-signature
;;  ;;  (concat
;;  ;;    "Foo X. Bar\n"
;;  ;;    "http://www.example.com\n")
;;  )

;; (setq mu4e-view-show-images t)
;; (setq mu4e-compose-signature "天行健，君子以自强不息。地势坤，君子以厚德载物。——《周易》")

;; (setq mu4e-org-contacts-file "~/Dropbox/Txt/contacts.txt")
;; (add-to-list 'mu4e-headers-actions
;;   '("org-contact-add" . mu4e-action-add-org-contact) t)
;; (add-to-list 'mu4e-view-actions
;;   '("org-contact-add" . mu4e-action-add-org-contact) t)

;; (require 'smtpmail)
;; (require 'starttls)

;; (setq
;;  message-send-mail-function 'smtpmail-send-it
;;  user-full-name "zhangtao"
;;  user-mail-address "ztao1991@gmail.com"
;;  smtpmail-starttls-credentials '(("smtp.gmail.com" "587" nil nil))
;;  smtpmail-auth-credentials (expand-file-name "~/.authinfo.gpg")
;;  smtpmail-default-smtp-server "smtp.gmail.com"
;;  smtpmail-smtp-server "smtp.gmail.com"
;;  smtpmail-smtp-service 587
;;  smtpmail-debug-info t
;;  starttls-extra-arguments nil
;;  starttls-gnutls-program "/usr/bin/gnutls-cli"
;;  smtpmail-stream-type 'starttls
;;  starttls-extra-arguments nil
;;  starttls-use-gnutls t
;;  )

;;(setq eww-search-prefix "http://www.bing.com/search?q=")


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
 '(jde-jdk (quote ("1.6")))  
 '(jde-jdk-registry (quote (("1.6" . "/usr/lib/jvm/java-8-oracle/"))))
 '(org-agenda-files
   (quote
    ("~/Dropbox/Txt/inbox.txt" "~/Dropbox/Txt/todo.txt"))))


