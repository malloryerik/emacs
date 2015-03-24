;;; Commentary: 
;;; package --- Summary
;;; The whole shebang right here -- need to change that, right?

;; move-text -- meta + arrow keys
(require 'move-text)
(move-text-default-bindings)


;; just testing this out!
;; (global-visual-line-mode)

;; change (increase) line-spcing
(setq-default line-spacing 2)

;; turn off beeping sounds
(setq visible-bell 1)

;; set mobileOrg folder in Dropbox
(setq org-mobile-directory "~/Dropbox/MobileOrg")

(package-initialize)

;; ACE-JUMP MODE --------- /Users/mallorym/.emacs.d/elpa/ace-jump-mode-20140616.115:
(add-to-list 'load-path "/Users/mallorym/.emacs.d/elpa/")
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)


;; DIRTREE
;; (require 'dirtree)

;; NEOTREE
;;  (add-to-list 'load-path "/.emacs.d/elpa/neotree-20150102.427/neotree.el")

;; (require 'neotree)
;; (global-set-key [f8] 'neotree-toggle)

;; SMART MODE LINE --------- 
;; (require 'smart-mode-line)
;; (sml/setup)
;; (sml/apply-theme 'respectful)

;; POWERLINE package
;; (require 'powerline)
;;  (powerline-default-theme)


;; ELECTRIC PAIR MODE -- TESTING -- 

;; EXPAND-REGION -
;; Expand region increases the selected region by semantic units. 
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; MULTIPLE-CURSORS--------------------------------------------------^^
;; Multiple cursors for Emacs. This is some pretty crazy functiaonality,
;; so yes, there are kinks. Don't be afraid tho, I've been using it
;; since 2011 with great success and much merriment. -- Magnars
 (require 'multiple-cursors)
;; Then you have to set up your keybindings - multiple-cursors doesn't
;; presume to know how you'd like them laid out. Here are some examples:
 (global-set-key (kbd "C-c m") 'mc/edit-lines)
;; When you have an active region that spans multiple lines, the following
;; will add a cursor to each line:
 (global-set-key (kbd "C->") 'mc/mark-next-like-this)
 (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
 (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;;  First mark the word, then add more cursors.
;; To get out of multiple-cursors-mode, press <return> or C-g.
;; The latter will first disable multiple regions before disabling
;; multiple cursors. If you want to insert a newline in
;; multiple-cursors-mode, use C-j.
;; !!!!!! END multiple-corsors ---------------------------------!!!!!!!


;; EVIL MODE ---> ALSO if turning on, see evil mode-line package later, and uncomment to turn on.
;; (require 'evil)
;; (evil-mode 1)
;;    (setq evil-motion-state-modes nil)
;; (setq evil-default-state 'emacs)

;; EVIL MODE-LINE  mode-line state change for evil
;;  change mode-line color by evil state
;;   (lexical-let ((default-color (cons (face-background 'mode-line)
;;                                      (face-foreground 'mode-line))))
;;     (add-hook 'post-command-hook
;;       (lambda ()
;;        (let ((color (cond ((minibufferp) default-color)
;;                            ((evil-insert-state-p) '("#e80000" . "#ffffff"))
;;                            ((evil-emacs-state-p)  '("#444488" . "#ffffff"))
;;                            ((buffer-modified-p)   '("#006fa0" . "#ffffff"))
;;                            (t default-color))))
;;          (set-face-background 'mode-line (car color))
;;           (set-face-foreground 'mode-line (cdr color))))))
 
;; transpose frame
(require 'transpose-frame)

;; Ido Mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;;----------------------------------------------------------------------- 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(background-color "#002b36")
 '(background-mode dark)
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(cursor-color "#839496")
 '(custom-enabled-themes (quote (spolsky)))
 '(custom-safe-themes
   (quote
    ("097f8d00362381188845e077f165bf848791fec64ded198fe01db7cd285b78fa" "0362a91e18acd6d94fe3f48514cae4d3fb578e5df4a610a9ef199f7e7ca01eaa" "341370c701fbadf72bee561b52805cc4eaf56ff427ce1f784f1c484a440c91da" "06ef8f3079386219616608b27165efe77a11925eccae56dfe021adf6f2e263b2" "a09962962d4422f2b21e34ff3d97ace6bf106daadc1adadf3dc64d4c2505f634" "cfb7364aa43f202ca60bea64f891167e80fcdee1f5365cdc09eb12f158be61cd" "57f4e6d4082577c6f3a6ba12b33cb94825fdb0d3e9725b4422f7b322d7287559" "1de5fb3f6471f1fdb25f289a14b24497ec750d46994441b90a87de6a25408f8c" "9aa7727bbcad3ed933b9640d8b1fedd640289930b09d233ebeac1d12ec71370d" "c5a044ba03d43a725bd79700087dea813abcb6beb6be08c7eb3303ed90782482" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "e56f1b1c1daec5dbddc50abd00fcd00f6ce4079f4a7f66052cf16d96412a09a9" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "46fd293ff6e2f6b74a5edf1063c32f2a758ec24a5f63d13b07a20255c074d399" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "a233249cc6f90098e13e555f5f5bf6f8461563a8043c7502fb0474be02affeea" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "1a85b8ade3d7cf76897b338ff3b20409cb5a5fbed4e45c6f38c98eee7b025ad4" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "c01f093ab78aad6ae2c27abc47519709c6b3aaa2c1e35c712d4dd81ff1df7e31" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "573e46dadf8c2623256a164831cfe9e42d5c700baed1f8ecd1de0675072e23c2" "a507b9ca4a605d5256716da70961741b9ef9ec3246041a4eb776102e8df18418" "0e121ff9bef6937edad8dfcff7d88ac9219b5b4f1570fd1702e546a80dba0832" "64581032564feda2b5f2cf389018b4b9906d98293d84d84142d90d7986032d33" default)))
 '(electric-layout-mode t)
 '(electric-pair-mode t)
 '(fci-rule-color "#49483E")
 '(foreground-color "#839496")
 '(fringe-mode 6 nil (fringe))
 '(global-hl-line-mode t)
 '(global-semantic-decoration-mode t)
 '(highlight-changes-colors ("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors
   (("#49483E" . 0)
    ("#67930F" . 20)
    ("#349B8D" . 30)
    ("#21889B" . 50)
    ("#968B26" . 60)
    ("#A45E0A" . 70)
    ("#A41F99" . 85)
    ("#49483E" . 100)))
 '(js3-boring-indentation t)
 '(js3-highlight-level 3)
 '(js3-indent-dots t)
 '(linum-format " %d ")
 '(magit-diff-use-overlays nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(scroll-bar-mode nil)
 '(semantic-mode t)
 '(show-paren-mode t)
 '(sml/mode-width
   (if
       (eq powerline-default-separator
	   (quote arrow))
       (quote right)
     (quote full)))
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s" powerline-default-separator
			    (car powerline-default-separator-dir)))
		   (quote powerline-active1)
		   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s" powerline-default-separator
			    (cdr powerline-default-separator-dir)))
		   (quote powerline-active1)
		   nil)))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s" powerline-default-separator
			    (car powerline-default-separator-dir)))
		   nil
		   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s" powerline-default-separator
			    (cdr powerline-default-separator-dir)))
		   (quote powerline-active2)
		   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
 '(speedbar-use-images nil)
 '(tool-bar-mode nil)
 '(transient-mark-mode (quote (only . t)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
;; --------------------------------------------------------------------------

 (custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#161A1F" :foreground "#DEDEDE" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight ultra-light :height 120 :width normal :foundry "nil" :family "Menlo"))))
 '(org-default ((t (:inherit default :family "Helvetica")))))
;; -----------------------------------------------------------------------

;; for js-2 javascript autocomplete etc... 
;; http://truongtx.me/2014/02/23/set-up-javascript-development-environment-in-emacs/
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)
;; (add-hook 'js-mode-hook 'js3-minor-mode)
;; (add-hook 'js3-mode-hook 'ac-js3-mode)
;; not sure this should be here... 
;; "To set the amount of syntax highlighting to perform,
;;  change the value of the variable to the level that you want" from abovoe link

(setq js2-highlight-level 3)
;; (setq js3-highlight-level 3)


;; for Flycheck:
;; (require 'flycheck)			
;; (add-hook 'js-mode-hook
;;          (lambda () (flycheck-mode t)))

;; (add-hook 'after-init-hook #'global-flycheck-mode)


;; Associate files with js mode
;; (add-to-list 'auto-mode-alist '("\\.json$" . js-mode))


;;; yasnippet
;;; should be loaded before auto complete so that they can work together
; (require 'yasnippet)		     
; (yas-global-mode 1)

;;; auto complete mod
;;;; should be loaded after yasnippet so that they can work together
; (require 'auto-complete-config)
; (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
; (ac-config-default)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
; (ac-set-trigger-key "TAB")
; (ac-set-trigger-key "<tab>")


;;; COMPANY MODE -- COMAPNY TERN
;;; COMPANY TERN
(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-tern))
 (with-eval-after-load 'company
   (add-to-list 'company-dabbrev-code-modes 'js3-mode)
   (add-to-list 'company-dabbrev-code-modes 'js2-mode))


;;; TERN JS ------------
;;; TernJS http://ternjs.net/doc/manual.html#emacs
(add-to-list 'load-path "/Users/mallorym/dev/tern/emacs")
(autoload 'tern-mode "tern.el" nil t)

(add-hook 'js3-mode-hook (lambda () (tern-mode t)))
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(add-hook 'js-mode-hook (lambda () (tern-mode t)))

;; ;; autocomplete
 (eval-after-load 'tern
    '(progn
       (require 'tern-auto-complete)
       (tern-ac-setup)))
;; ;; !!END TERN JS-----------!!!




;; WEB MODE ------------  ----------- -- http://web-mode.org
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; Using web-mode for editing plain HTML files can be done this way
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))



;; WEB-MODE AUTO PAIR
(setq web-mode-extra-auto-pairs
      '(("erb"  . (("open" "close")))
        ("php"  . (("open" "close")
                   ("open" "close")))
       ))

(setq web-mode-enable-auto-pairing t)

(setq web-mode-enable-comment-keywords t)

(setq web-mode-enable-current-element-highlight t)

;;  ! WEB MODE ------ END of WEB MODE ---------------- !!!


