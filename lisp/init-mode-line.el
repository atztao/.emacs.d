(setq-default mode-line-format
	      (list

	       ;; the buffer name; the file name as a tool tip
	       '(:eval (propertize "%b " 'face 'bold
				   'help-echo (buffer-file-name)))

	       "                      "
	       ;; "%-"
	       ;; line and column
	       ;;"(" ;; '%02' to set to 2 chars at least; prevents flickering
	       (propertize "%02l,%02c" 'face 'bold) 

	       ;; relative position, size of file

	       "          "
	       (propertize " %p/%I " 'face 'bold) ;; % above top

	       "                 "
	       '(:eval (propertize (codefalling//simplify-major-mode-name) 'face 'bold
				   'help-echo buffer-file-coding-system))

	       ;; '(:eval (propertize "=%m=" 'face 'bold
	       ;; 			   'help-echo buffer-file-coding-system))
	       

	       ;; '(:eval (propertize (if overwrite-mode "[Ovr]" "[Ins]")
	       ;; 			   'face 'bold
	       ;; 			   'help-echo (concat "Buffer is in "
	       ;; 					      (if overwrite-mode "overwrite" "insert") " mode")))

	       ;; ;; was this buffer modified since the last save?
	       ;; '(:eval (when (buffer-modified-p)
	       ;; 		 (concat ","  (propertize "Mod"
	       ;; 					  'face 'font-lock-warning-face
	       ;; 					  'help-echo "Buffer has been modified"))))

	       ;; ;; is this buffer read-only?
	       ;; '(:eval (when buffer-read-only
	       ;; 		 (concat ","  (propertize "RO"
	       ;; 					  'face 'bold
	       ;; 					  'help-echo "Buffer is read-only"))))  

	       ;; add the time, with the date and the emacs uptime in the tooltip
	       ;; '(:eval (propertize (format-time-string "%H:%M")
	       ;; 			   'help-echo
	       ;; 			   (concat (format-time-string "%c; ")
	       ;; 				   (emacs-uptime "Uptime:%hh"))))

	       ;; " --"
	       ;; i don't want to see minor-modes; but if you want, uncomment this:
	       ;; minor-mode-alist  ;; list of minor modes
	       "% " ;; fill with '-'
	       ))


;; (set-face-attribute 'mode-line           nil :underline t :box nil ) ;;#A7A5A7
;; (set-face-attribute 'mode-line-inactive           nil :underline t :box nil ) ;;#A7A5A7
(set-face-attribute 'mode-line           nil :underline t :box nil :background "#000000" :foreground "grey70") ;;#A7A5A7
(set-face-attribute 'mode-line-inactive           nil :underline t :box nil :background "#000000" :foreground "grey50") ;;#A7A5A7
;; ;; ;;(set-face-attribute 'mode-line-inactive  nil :box nil :background "#BCBCBC" :foreground "#000000")
(set-face-attribute 'mode-line-buffer-id nil :background "#000000" :foreground "grey70" :bold t )

(provide 'init-mode-line)
