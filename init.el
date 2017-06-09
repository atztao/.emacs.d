;; /*-----------------------------------------
;; Athor:Zhang Tao
;; Email:ztao1991@gmail.com
;; Gtihub:github.com/ztao1991
;; Version:v2017.5.11
;; ------------------------------------------*/

;;-----------------------------------------------
;;Emacs Server . Theme .Fonts 
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

;;(setq visible-bell 1)
;; Disable the splash screen (to enable it agin, replace the t with 0)
;;(setq inhibit-splash-screen t)

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

;;---------------------------
;;fonts
;;---------------------------
(setq default-font-size-pt 10)

(set-frame-font "Menlo-8")
;;(set-frame-font "Monaco-8")
;;(set-frame-font "Source Code Pro-8")
;;(set-frame-font "DejaVu Sans Mono-8")

;;(set-fontset-font "fontset-default" 'han '("PingFang SC"))
;;(set-fontset-font "fontset-default" 'han '("Hiragino Sans GB"))
;;(set-fontset-font "fontset-default" 'han "WenQuanYi Micro Hei Mono")
(set-fontset-font "fontset-default" 'han "Source Han Sans CN")

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
;;Plugin
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
;; (require 'cl-lib)
;; (require 'cl)
;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))

;; (eval-when-compile
;;   (require 'use-package))



;----------------------
;Themes
;----------------------
;;zenburn

(defvar zenburn-override-colors-alist
   '(("zenburn-bg" . "#1C1C1C"))) ;#1d1f21 #111111 #2d2d2d
(load-theme 'zenburn t)

;; (set-cursor-color "red")
;;(set-face-attribute 'default nil :height 82)


;;colors
(setq cursor-type 'box)

(make-face-bold 'isearch)
(make-face-bold 'lazy-highlight)
(set-face-foreground 'isearch "#000000")
(set-face-background 'isearch "#ffff00")
(set-face-foreground 'lazy-highlight "#000000")
(set-face-background 'lazy-highlight "#ffff00")

(set-face-attribute 'region nil :background "#F0E68C" ) ;;#EEE8D6

(set-cursor-color "red")
(set-mouse-color "goldenrod")

;;(set-background-color "darkslategrey")
;;(set-background-color "#FFFFFF")
;;(set-background-color "ivory")
;;(set-background-color "white") ;;202020
;;(set-foreground-color "black")


;;--------------------------
;;mode-line
;;--------------------------
;;(setq-default mode-line-format nil)

(column-number-mode 1)

;;(set-face-attribute 'mode-line nil  :height 90)

;;---------------------------Vertical-border
;; Reverse colors for the border to have nicer line  
(set-face-inverse-video-p 'vertical-border nil)

;; (set-face-foreground 'vertical-border "gray")
;; (set-face-background 'vertical-border "#FFFFFF")

(set-face-foreground 'vertical-border "gray25")
(set-face-background 'vertical-border "black")

(set-display-table-slot standard-display-table
                        'vertical-border 
                        (make-glyph-code ?│))

;;(set-face-background 'fringe "#809088")

(setq-default mode-line-cleaner-alist
              `((auto-complete-mode . " á")
                (company-mode . " CA")
                (undo-tree-mode-lighter " Ü")
                (helm-completion-mode-string " H")
                (yas-minor-mode . " ý")
                (undo-tree-mode . " Út")
                (golden-ratio-mode . "")
                (flymake-mode . " Fly")
                ;; major mode
                (fundamental-mode . "Fd")
                (ibuffer-mode . "iBuf")
                (python-mode . "Py")
                (lisp-interaction-mode . "iEL")
                (emacs-lisp-mode . "EL")
                (super-save-mode . "XS")
		(helm-mode . " H")))

(defun clean-mode-line ()
  (interactive)
  (dolist (cleaner mode-line-cleaner-alist)
    (let* ((mode (car cleaner))
           (mode-str (cdr cleaner))
           (old-mode-str (cdr (assq mode minor-mode-alist))))
      (when old-mode-str
        (setcar old-mode-str mode-str))
      ;; major mode
      (when (eq mode major-mode)
        (setq mode-name mode-str)))))

(add-hook 'after-change-major-mode-hook 'clean-mode-line)

;; (set-face-attribute 'mode-line           nil :box nil :background "grey75" :foreground "black") ;;#A7A5A7
;; (set-face-attribute 'mode-line-inactive  nil :box nil :background "dark olive green" :foreground "grey")

;; (set-face-attribute 'mode-line-buffer-id nil :background "#f0dfaf" :foreground "#acbc90")
;; ;; (set-face-attribute 'mode-line-highlight nil :box nil :background "deep sky blue")
;; ;;(set-face-attribute 'mode-line-inactive  nil :box nil :background "grey52" :foreground "black")

(setq-default mode-line-buffer-identification
	      (propertized-buffer-identification "%b"))

;; (set-face-attribute 'mode-line nil
;;                 :box '(:line-width 6 :color "gray20"))

;; (set-face-attribute 'mode-line-inactive nil
;; 		    :foreground "black" :background "gray80"
;; 		    :box 'nil)

;relative-number------------------------
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


;;rainbow-delimiters---------------------
(require 'rainbow-delimiters)
;; Enables rainbow-delimiters-mode in Emacs Lisp buffers
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'python-mode-hook 'rainbow-delimiters-mode)
;; Enables rainbow-delimiters-mode in Clojure buffers.
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
;; enables rainbow-delimiters-mode in other Lisp mode buffers.
(add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)

;;file explore-----------------
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq-default neo-smart-open t)
(setq neo-theme (if (display-graphic-p) 'ascii))
(setq-default neo-mode-line-format nil)

;;Terminal------------------
(require 'multi-term)
(setq multi-term-program "/bin/zsh")
(setq system-uses-terminfo nil)

(add-hook 'term-mode-hook
          (lambda ()
            (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
            (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))))


(add-hook 'term-mode-hook
          (lambda ()
            (setq term-buffer-maximum-size 0)))

(add-hook 'term-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)
            (autopair-mode -1)))

(add-hook 'term-mode-hook
          (lambda ()
            (define-key term-raw-map (kbd "C-y") 'term-paste)))

;;-----------------
;;Calendar
;;-----------------
(require 'cal-china-x)
(setq mark-holidays-in-calendar t)
(setq cal-china-x-important-holidays cal-china-x-chinese-holidays)
(setq calendar-holidays cal-china-x-important-holidays)
(setq my-holidays '((holiday-fixed 2 14 "情人节") (holiday-fixed 9 10 "教师节") (holiday-float 6 0 3 "父亲节")
                    (holiday-lunar 1 1 "春节" 0) (holiday-lunar 1 15 "元宵节" 0) (holiday-solar-term "清明" "清明节") (holiday-lunar 5 5 "端午节" 0) (holiday-lunar 7 7 "七夕情人节" 0) (holiday-lunar 8 15 "中秋节" 0)
                    (holiday-lunar 12 23 "妈妈生日" 0) (holiday-lunar 5 9 "爸爸生日" 0) (holiday-lunar 10 17 "姐姐生日" 0) (holiday-lunar 10 18 "姐夫生日" 0) (holiday-fixed 10 29 "宝宝生日") ))
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
(setq org-completion-use-ido t)

(defun ido-bookmark-jump (bname)
  "*Switch to bookmark interactively using `ido'."
  (interactive (list (ido-completing-read "Bookmark: " (bookmark-all-names) nil t)))
  (bookmark-jump bname))
(global-set-key (kbd "C-x r l") 'ido-bookmark-jump)
;;(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

;;(setq ido-separator "\n")
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
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
(global-undo-tree-mode 1)

;;----------------
;;windows—switch
;;----------------
;; (global-set-key (kbd "M-p") 'ace-window)

;;fringer
;;(set-window-fringes (selected-window) 0 0 nil)

;; (custom-set-faces
;;   '(default ((t (:backgroun "black" :foreground "grey"))))
;;   '(fringe (( (:background "black")))))

;;smooth-scroll---------------------------------
;; (require 'smooth-scrolling)
;; (smooth-scrolling-mode 1)
;; (setq scroll-margin 1
;;       scroll-conservatively 10000
;;       scroll-step 1
;;       scroll-up-aggressively 0.01
;;       scroll-down-aggressively 0.01)
;; (setq-default scroll-up-aggressively 0.01
;;               scroll-down-aggressively 0.01)

;;---------------------------------------------------------------------------------

;;-----------------------
;;Ag apt-get install silversearcher-ag
;;-----------------------
(require 'ag)
(setq ag-highlight-search t)
(setq ag-reuse-window 't)
(setq ag-reuse-buffers 't)
(global-set-key (kbd "M-s a")   #'ag) ;;apt-get install silversearcher-ag

;;-----------------------
;;helm-mode Helm 作为前端使用 helm-swoop+helm-ag
;;-----------------------
(setq tramp-mode nil)
(setq ad-redefinition-action 'accept)
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

(setq save-place-file "~/.emacs.d/saveplace")
(save-place-mode 1) 


;;--------------------------multilple-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;--------------
;ace-jump
;--------------

;; (ace-isearch-mode +1)
;; (global-ace-isearch-mode +1)

(require 'ace-pinyin)
(setq ace-pinyin-use-avy nil)
(ace-pinyin-global-mode +1)
(setq ace-pinyin-treat-word-as-char nil)
(setq ace-pinyin-use-avy nil) ;; uncomment if you want to use `ace-jump-mode'

(define-key global-map (kbd "C-c SPC") 'ace-pinyin-jump-char)

(add-to-list 'load-path "which-folder-ace-jump-mode-file-in/")
(require 'ace-jump-mode)
;; (define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
;;(global-set-key (kbd "C-c SPC") 'ace-jump-mode)

;;--------------The Key Disable In org-mode
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-c SPC") nil))
;; When org-mode starts it (org-mode-map) overrides the ace-jump-mode.

(add-hook 'org-mode-hook
          (lambda ()
            (local-set-key (kbd "\C-c SPC") 'ace-pinyin-jump-char)))

;;--------------
;;window-number
;;--------------
;; (require 'window-number)
;; (window-number-mode)

;; (require 'window-numbering)
;; (window-numbering-mode 1)
;; (setq window-numbering-assign-func
;;       (lambda () (when (equal (buffer-name) "*Calculator*") 9)))

(windmove-default-keybindings)
(global-set-key [M-left] 'windmove-left)          ; move to left window
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to lower window

;----------------
;yasnippet
;----------------

(require 'yasnippet)
(yas-global-mode 1)
(setq yas-snippet-dirs "~/.emacs.d/snippets/")
;;(setq yas-snippet-dirs "~/.emacs.d/elpa/elpy-20161211.1045/snippets/")
;;(setq debug-on-error t)

;----------------
;auto-complete
;----------------
(require 'popup)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete/dict")
(ac-config-default)

(defun my:ac-c-headers-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))

(add-hook 'c++-mode-hook 'my:ac-c-headers-init)
(add-hook 'c-mode-hook 'my:ac-c-headers-init)

;;(add-to-list 'ac-modes 'org-mode)
(ac-set-trigger-key "TAB")


;; Require flycheck to be present
(require 'flycheck)
;; Force flycheck to always use c++11 support. We use
;; the clang language backend so this is set to clang
(add-hook 'c++-mode-hook
          (lambda () (setq flycheck-clang-language-standard "c++11")))
;; Turn flycheck on everywhere
;;(global-flycheck-mode)

;;turn off SOME unwanted flycheck warnings(https://lists.gnu.org/archive/html/help-gnu-emacs/2015-02/msg00134.html)
(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc emacs-lisp))

;; Use flycheck-pyflakes for python. Seems to work a little better.
;; (require 'flycheck-pyflakes)

;;(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))

;;--------------------evil-mode
;;(require 'init_evil)

;;--------------------email
;; (provide 'init-email)

;;-------------------------
;;C++
;;-------------------------

;; ;; Load rtags and start the cmake-ide-setup process
;; (require 'rtags)
;; (require 'cmake-ide)
;; (cmake-ide-setup)
;; ;; Set cmake-ide-flags-c++ to use C++11
;; (setq cmake-ide-flags-c++ (append '("-std=c++11")))
;; ;; We want to be able to compile with a keyboard shortcut
;; (global-set-key (kbd "C-c m") 'cmake-ide-compile)

;; ;; Set rtags to enable completions and use the standard keybindings.
;; ;; A list of the keybindings can be found at:
;; ;; http://syamajala.github.io/c-ide.html
;; (setq rtags-autostart-diagnostics t)
;; (rtags-diagnostics)
;; (setq rtags-completions-enabled t)
;; (rtags-enable-standard-keybindings)

;; ;; clang-format can be triggered using C-M-tab
;; (require 'clang-format)
;; (global-set-key [C-M-tab] 'clang-format-region)
;; ;; Create clang-format file using google style
;; ;; clang-format -style=google -dump-config > .clang-format

;----------------
;python+c languge
;----------------

;;(setq py-python-command "/usr/bin/python2")
(setq py-python-command "/usr/bin/python3")
;;we should install ipython
;; (add-to-list 'load-path "~/.emacs.d/elpa/python-mode")
;; (require 'python-mode)

;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:setup-keys t)                      ; optional
;; (setq jedi:complete-on-dot t)                 ; optional


(elpy-enable)
;; (elpy-use-ipython)
(setq elpy-rpc-backend "jedi")

(setq python-shell-completion-native-enable nil)

(with-eval-after-load 'python
  (defun python-shell-completion-native-try ()
    "Return non-nil if can trigger native completion."
    (let ((python-shell-completion-native-enable t)
	  (python-shell-completion-native-output-timeout
           python-shell-completion-native-try-output-timeout))
      (python-shell-completion-native-get-completions
       (get-buffer-process (current-buffer))
       nil "_"))))

(require 'cl-lib)
(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
  "Prevent annoying \"Active processes exist\" query when you quit Emacs."
  (cl-letf (((symbol-function #'process-list) (lambda ())))
    ad-do-it))

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
(add-hook 'after-init-hook #'global-flycheck-mode)

(setq elpy-rpc-python-command "python3")
(setq python-shell-interpreter "python3")
;; (setq elpy-rpc-python-command "python2")
;; (setq python-shell-interpreter "python2")
;;(elpy-use-ipython "ipython3")

;; (setq ein:jupyter-default-server-command "/usr/local/bin/jupyter")
;; (setq ein:jupyter-server-args (list "--no-browser"))



;;apt-get install ipython then M-x edit-abbrevs
;;(require 'ipython)
;;(setq-default py-shell-name "ipython")

;;pip install autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; (require 'tramp)
;; (add-to-list 'Info-default-directory-list "~/.emacs.d/tramp/info/")

					;-----------------
					;Java + Jdee
					;-----------------

;; (add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")
;; (autoload 'jde-mode "jde" "JDE mode" t)
;; (setq auto-mode-alist
;;       (append '(("\\.java\\'" . jde-mode)) auto-mode-alist))

					;------------------
					;Html
					;------------------

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)

					;-----------------
					;markdown-mode
					;-----------------
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
;; (autoload 'gfm-mode "gfm-mode"
;;   "Major mode for editing GitHub Flavored Markdown files" t)
;; (add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
;;(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(setq markdown-enable-math t)
;; (setq markdown-css-paths "~/Dropbox/Linux/github-markdown.css")
(setq markdown-command
      "/usr/bin/pandoc -s -c ~/Dropbox/Markdown/css-org/markdown/Github.css --mathjax --highlight-style espresso")
;; (setq markdown-command "pandoc --smart -f markdown -t html")

;; (setq markdown-css-paths `(,(expand-file-name "~/Dropbox/Linux/github-markdown.css")))

;;(require 'w3m-load)

;;(google-this-mode 1)

;;  (setq browse-url-browser-function 'w3m-browse-url)
;;  (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;;  ;; optional keyboard short-cut
;; (global-set-key "\C-xm" 'browse-url-at-point)
;; (setq w3m-use-cookies t)

					;-------------
					;org-mode
					;-------------


(setq org-todo-keywords
      '((sequence "TODO" "NEXT" "|" "DONE" "REVIEW")))

(defun my/org-mode-hook ()
  "Stop the org-level headers from increasing in height relative to the other text."
  (dolist (face '(org-level-1
                  org-level-2
                  org-level-3
                  org-level-4
                  org-level-5))
    (set-face-attribute face nil :weight 'semi-bold :height 1.0)))

(add-hook 'org-mode-hook 'my/org-mode-hook)


;; (set-face-attribute 'org-agenda-diary nil
;;                     :foreground "red"
;;                     :background nil
;;                     :bold 'normal
;;                     :box '(:color "green" :line-width 2 :style nil))

;;(org-entry-get nil "ITEM")

;; (add-to-list 'load-path "~/.emacs.d/elpa/org-20170515" )
;; (require 'org)
(setq org-list-description-max-indent 5)
(setq org-adapt-indentation nil)

(setq org-latex-images-centered t)
(setq org-startup-xindented t)

(setq org-log-done 'time)
;;(setq org-log-done 'note)
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-deadline-if-done t)

(setq org-use-speed-commands t)

(setq org-todo-state-tags-triggers
      '(("CANCELLED" ("ARCHIVE" . t)))) 
;;export image width
(setq org-image-actual-width 100)
;;Auto Fill
    (add-hook 'text-mode-hook 'turn-on-auto-fill)

(add-hook 'hack-local-variables-hook (lambda () (setq truncate-lines nil)))
(add-hook 'org-mode-hook   
          (lambda () (setq truncate-lines nil)))  


;;Archive All Done Tas
(setq org-archive-location (concat "archive/archive-" (format-time-string "%Y%m" (current-time)) ".org_archive::"))

(defun my-org-archive-done-tasks ()
  (interactive)
  (org-map-entries 'org-archive-subtree "/DONE" '~/Dropbox/Txt/archive/done.txt))

(defun channing/archive-when-done ()
  "Archive current entry if it is marked as DONE (see `org-done-keywords')."
  (when (org-entry-is-done-p)
    (org-archive-subtree-default)))

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
 '(org-agenda-done ((t (:foreground "#4f4f4f" :weight normal :strike-through t))))
 '(org-done ((t (:foreground "#4f4f4f" :weight bold :strike-through t))))
 '(org-headline-done ((((class color) (min-colors 16) (background dark)) (:foreground "#5f5f5f" :strike-through t))))
 '(term ((t (:background "white" :foreground "black")))))

;;the mouse cursor from highlighting lines in the agenda
(add-hook 'org-agenda-finalize-hook
      (lambda () (remove-text-properties
		  (point-min) (point-max) '(mouse-face t))))

(setq org-startup-indented t)
(setq org-hide-leading-stars t)

(setq org-confirm-babel-evaluate nil)

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
(setq org-src-tab-acts-natively t)

(setq org-export-babel-evaluate nil)

(setq org-use-speed-commands t)

(defun org-babel-tangle-block()
  (interactive)
  (let ((current-prefix-arg '(4)))
    (call-interactively 'org-babel-tangle)
    ))

(setq org-ascii-links-to-notes nil)
(setq org-ascii-headline-spacing (quote (1 . 1)))

;;org-mode export html

;; 防止org-mode在导出HTML时把行末的回车输出为空格
(defadvice org-html-paragraph (before fsh-org-html-paragraph-advice
                                      (paragraph contents info) activate)
  "Join consecutive Chinese lines into a single long line without
unwanted space when exporting org-mode to html."
  (let ((fixed-contents)
        (orig-contents (ad-get-arg 1))
        (reg-han "[[:multibyte:]]"))
    (setq fixed-contents (replace-regexp-in-string
                          ;; 这一行是匹配上一行末和下一行头都是中文的情况, 但是这样的话遇上"中文\nenglish"就仍然有空格
                          ;; (concat "\\(" reg-han "\\) *\n *\\(" reg-han "\\)")
                          (concat "\\(" reg-han "\\) *\n *")
                          "\\1" orig-contents))
    (ad-set-arg 1 fixed-contents)))

(setf org-html-mathjax-options
      '((path "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML")
        (scale "100") 
        (align "center") 
        (indent "2em")
        (mathml nil))
      )
(setf org-html-mathjax-template
      "<script type=\"text/javascript\" src=\"%PATH\"></script>")

(setq org-html-table-default-attributes
      '(:border "0" :cellspacing "0" :cellpadding "6" :rules "none" :frame "none"))

(setq org-html-doctype "html5")
(setq org-html-xml-declaration nil)
(setq org-html-postamble nil)

(setq org-html-head "<link rel='stylesheet' href='http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css'>\n<link rel='stylesheet' href='http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css'>\n<script src='http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js'>\n</script><script src='http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js'></script>")


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
      ;; `(("t" "Todo" entry (file+headline "~/Dropbox/Txt/todo.txt" "Inbox")
      ;;    "* TODO %? ")
      `(("t" "Todo" entry (file+headline "~/Dropbox/Txt/todo.txt" "Inbox")
         "* TODO %? ")
        ("n" "Note" entry (file+headline "~/Dropbox/Txt/inbox.txt" "Note")
         "* %U\n%? ")
        ;; ("l" "Link" entry (file+headline "~/Dropbox/Txt/inbox.txt" "Link")
        ;;  "* %? \n%U\n")
        ("c" "Contact" entry (file+headline "~/Dropbox/Txt/contacts.txt" "Contact")
         "* %?
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
(setq org-agenda-convert-date 'Chinese)
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
;; (setq org-crypt-tag-matcher "Secret")
;; (setq org-tags-exclude-from-inheritance (quote("Secret")))
;; (setq org-crypt-key nil)

;; use org-bullets-mode for utf8 symbols as org bullets
;; (require 'org-bullets)
;; ;; (setq org-ellipsis "+")
;; (setq org-bullets-bullet-LIST '("•"))


;; ;; make available "org-bullet-face" such that I can control the font size individually
;; (setq org-bullets-face-name (quote org-bullet-face))
;; (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;; (setq org-bullets-bullet-list '("•"))

;;------------------ox-reveal (http://scottnesbitt.io/2017/01/24/org-reveal/)

;; (add-to-list 'load-path "~/.emacs.d/org-reveal/")
(require 'ox-reveal)
;; (setq org-reveal-root "http://cdn.jsdelivr.net/reveal.js/3.0.0/")
(setq org-reveal-root "file:///home/zhangtao/.emacs.d/reveal.js-master/")
(setq org-reveal-hlevel 2)
(setq org-reveal-control nil)
(setq org-reveal-mathjax t)
(setq org-reveal-title-slide 'auto) ;;C-u A-x org-reload Fix 

(setq org-footnote-auto-adjust t)



					;----------------------
					;auctex+XeCJK
					;----------------------

(add-to-list 'load-path "~/.emacs.d/elpa/auctex-11.89/")
(load "auctex.el" nil t t)
(load "preview.el" nil t t)
(require 'tex-mik)
(require 'tex)

(TeX-global-PDF-mode t)
(setq preview-image-type 'svg)
;; only start server for okular comms when in latex mode
;;(add-hook 'LaTeX-mode-hook 'server-start)
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
      '(("PDF Viewer" "okular %o")))

(setq org-latex-pdf-process '("xelatex -shell-escape -interaction nonstopmode %f"
                              "xelatex -shell-escape -interaction nonstopmode %f"))


;; (require 'server)
;; (server-force-delete)  ;; WARNING: Kills any existing edit server

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
(setq org-latex-remove-logfiles t)

(setq org-latex-logfiles-extensions (quote ("lof" "lot" "aux" "idx" "log" "out" "toc" "nav" "snm" "vrb" "dvi" "fdb_latexmk" "blg" "brf" "fls" "entoc" "ps" "spl" "bbl" "pyg")))

(advice-add 'org-latex-compile :after #'delete-file)

;;-------------------------------------------------------
;;ox-latex
;;-------------------------------------------------------

(require 'ox-latex) ;;sudo pip install pygmentize https://emacs-china.org/t/spacemacs-org-mode-pdf/1577/15


;;org-mode source code setup in exporting to latex
(setq org-latex-listings 'minted)
(add-to-list 'org-latex-packages-alist '("" "minted"))
(setq org-latex-minted-options
      '(("frame" "lines")
	("linenos=false")
	;;("fontsize" "\\scriptsize")
	("fontsize" "\\footnotesize")
	("xleftmargin" "\\parindent")
	("xrightmargin" "0.5cm")
        ("xleftmargin"  "0.5cm")
	))

;; (setq org-latex-custom-lang-environments
;;            '(
;;             (emacs-lisp "common-lispcode")
;;              ))
;; (setq org-latex-minted-options
;;            '(("frame" "")
;;              ("fontsize" "\\scriptsize")
;;              ("linenos=false" "")))

;;(setq org-export-latex-listings t)
;; (add-to-list 'org-latex-listings
;;              '("" "listings"))
;; (add-to-list 'org-latex-packages-alist
;;              '("" "listings" t))
;; (add-to-list 'org-latex-listings
;;   	     '("" "color"))

(add-to-list 'org-latex-packages-alist
             '("" "xcolor" t))
(add-to-list 'org-latex-packages-alist
             '("" "fontspec" t))
(add-to-list 'org-latex-packages-alist
             '("" "indentfirst" t))
(add-to-list 'org-latex-packages-alist
             '("" "xunicode" t))
(add-to-list 'org-latex-packages-alist
             '("" "geometry"))
(add-to-list 'org-latex-packages-alist
             '("" "float"))
(add-to-list 'org-latex-packages-alist
             '("" "longtable"))
(add-to-list 'org-latex-packages-alist
             '("" "tikz"))
(add-to-list 'org-latex-packages-alist
             '("" "fancyhdr"))
(add-to-list 'org-latex-packages-alist
             '("" "textcomp"))
(add-to-list 'org-latex-packages-alist
             '("" "amsmath"))
(add-to-list 'org-latex-packages-alist
             '("" "tabularx" t))
(add-to-list 'org-latex-packages-alist
             '("" "booktabs" t))
(add-to-list 'org-latex-packages-alist
             '("" "grffile" t))
(add-to-list 'org-latex-packages-alist
             '("" "wrapfig" t))
(add-to-list 'org-latex-packages-alist
             '("normalem" "ulem" t))
(add-to-list 'org-latex-packages-alist
             '("" "amssymb" t))
(add-to-list 'org-latex-packages-alist
             '("" "capt-of" t))
(add-to-list 'org-latex-packages-alist
             '("figuresright" "rotating" t))
(add-to-list 'org-latex-packages-alist
             '("Lenny" "fncychap" t))

(add-to-list 'org-latex-classes
             '("org-book"
               "\\documentclass{book}
\\usepackage[slantfont, boldfont]{xeCJK}
% chapter set
\\usepackage{titlesec}
            \\usepackage{hyperref}

[NO-DEFAULT-PACKAGES]
[PACKAGES]

\\setmainfont{Times New Roman}
\\setsansfont{Helvetica}
\\setmonofont{Courier New}
\\setCJKmainfont{SimSun} 
\\setCJKsansfont{Microsoft YaHei} 
\\setCJKmonofont{FZYTK.ttf} 

%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}

% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

% 代码设置
\\lstset{numbers=left,
numberstyle= \\tiny,
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
frame=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}

[EXTRA]
"
                 ("\\chapter{%s}" . "\\chapter*{%s}")
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

  (add-to-list 'org-latex-classes
               '("org-article"
                 "\\documentclass{article}
\\usepackage[slantfont, boldfont]{xeCJK}
\\usepackage{titlesec}
\\usepackage{hyperref}

[NO-DEFAULT-PACKAGES]
[PACKAGES]

\\parindent 2em

\\setmainfont{Times New Roman}
\\setsansfont{Helvetica}
\\setmonofont{Courier New}

\\setCJKmainfont{SimSun} 
\\setCJKsansfont{Microsoft YaHei} 
\\setCJKmonofont{FZYTK.ttf} 

%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}

% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

% 代码设置
% \\lstset{numbers=left,
% numberstyle= \\tiny,
% keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
% frame=shadowbox,
% breaklines=true,
% rulesepcolor= \\color{ red!20!green!20!blue!20}
% }

[EXTRA]
"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

  (add-to-list 'org-latex-classes
               '("org-beamer"
                 "\\documentclass{beamer}
\\usepackage[SlantFont, BoldFont]{xeCJK}
% beamer set
\\usepackage[none]{hyphenat}
\\usepackage[abs]{overpic}

[NO-DEFAULT-PACKAGES]
[PACKAGES]

\\setmainfont{Times New Roman}
\\setsansfont{Helvetica}
\\setmonofont{Courier New}

\\setCJKmainfont{SimSun} 
\\setCJKsansfont{Microsoft YaHei} 
\\setCJKmonofont{FZYTK.ttf} 

%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}

% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

% 代码设置
\\lstset{numbers=left,
numberstyle= \\tiny,
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
frame=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}

[EXTRA]
"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;; (add-hook 'org-mode-hook
;;       (lambda () 
;;         (add-to-list 'org-latex-classes
;;              '("ctexart"
;;                "\\documentclass{ctexart}"
;;                ("\\section{%s}" . "\\section*{%s}")
;;                ("\\subsection{%s}" . "\\subsection*{%s}")
;;                ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;;                ("\\paragraph{%s}" . "\\paragraph*{%s}")
;;                ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))))

;; (setq org-latex-to-pdf-process 
;;       '("xelatex -interaction nonstopmode %f"
;; 	"xelatex -interaction nonstopmode %f"))


;; (setq org-latex-to-pdf-process 
;;       '("xelatex --shell-escape -interaction nonstopmode %f"
;; 	"xelatex --shell-escape -interaction nonstopmode %f"))

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
;; ;; (add-to-list 'load-path "~/.emacs.d/elpa/matlab-emacs")
;; ;; (load-library "matlab-load")
;; (add-hook 'matlab-mode-hook 'auto-complete-mode)
;; (setq auto-mode-alist
;;       (cons
;;        '("\\.m$" . matlab-mode)
;;        auto-mode-alist))



;;-----------------------------------------------------------
;;Email
;;-----------------------------------------------------------
                                        ;------------------------------------------------------------
;backup
;------------------------------------------------------------
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

;;-----------------------------------------------------------
;;auto-save
;;-----------------------------------------------------------
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
    (ujelly-theme helm-swoop undo-tree rainbow-delimiters use-package ox-reveal multiple-cursors esup window-number ace-jump-mode ein jedi zenburn-theme writeroom-mode window-numbering websocket web-mode super-save solarized-theme smooth-scrolling smex smart-mode-line-powerline-theme semi rtags request relative-line-numbers python-mode py-autopep8 pos-tip neotree multi-term minimap matlab-mode markdown-mode magit linum-relative key-chord jdee htmlize ht helm-ag gntp focus emmet-mode elpy cmake-ide clang-format cl-generic cal-china-x autopair auto-complete-clang auto-complete-c-headers ag ace-window ace-pinyin ace-isearch)))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(truncate-partial-width-windows nil)
 '(user-full-name "Tao Zhang")
 '(user-mail-address "ztao1991@gmail.com"))
