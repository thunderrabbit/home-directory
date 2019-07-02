;; Added by Rob 1 January 2019.
;; https://github.com/melpa/melpa
;; MELPA installer code:
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(put 'downcase-region 'disabled nil)

(find-file "~/.emacs.d/personal/hugo/hugo.el")
(setq ispell-program-name "/usr/local/bin/ispell")

(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)

(fset 'git-rm
   [?\C-x ?b ?* ?g ?i ?t ?- ?r ?m return ?y backspace ?\C-y ?\C-p ?\C-s ?t ?e ?d ?: ?\C-m escape ?< ?\C-x ?r ?k ?\C-x ?r ?t ?g ?i ?t ?  ?r ?m return ?\C-n ?\C-w ?\C-y ?\C-  escape ?< ?\C-w ?\C-x ?k return])
(put 'upcase-region 'disabled nil)

(fset 'gimme-digits
  [?\C-x ?b ?* ?d ?i ?g ?i ?t ?s ?* return ?\C-x ?k return ?\C-x ?b
?* ?d ?i ?g ?i ?t ?s ?* return ?\C-x ?i ?~ ?/ ?d
?i ?g ?i ?t ?s ?. ?t ?x ?t return])

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "~/.emacs.d/personal/")
(add-to-list 'load-path "~/.emacs.d/personal/hugo/")
(add-to-list 'load-path "~/.emacs.d/personal/markdown-mode/")
(add-to-list 'load-path "~/.emacs.d/personal/emacs-easy-hugo/")

(load "hugo.el")
(load "easy-hugo.el")
(load "hack.rn.el")
(load "~/.emacs.d/personal/reddit")


	(setq easy-hugo-basedir "~/mpc/")
	(setq easy-hugo-url "https://tokyo.mypowercircle.org")
	(setq easy-hugo-sshdomain "tmpc")
	(setq easy-hugo-root "/home/dh_tokyo_mpc/tokyo.mypowercircle.org/")
	(setq easy-hugo-previewtime "300")
	(define-key global-map (kbd "C-c C-e") 'easy-hugo)


(fset 'journal-dired-journal
   [?\C-x ?d ?~ ?/ ?j ?o ?u ?r ?n ?a ?l ?\C-m ?g ?\C-\[ ?> ?\C-r ?R ?E ?A ?D ?\C-m up ?\C-m ?g ?\C-\[ ?> ?p ?\C-m ?g ?~])

(global-set-key (kbd "C-c j") 'journal-new-post)
(global-set-key (kbd "C-c b") 'blog-new-post)
(global-set-key (kbd "C-c m") 'mt3-new-episode)    ; defined in ~/.emacs.d/personal/hugo/hugo.el
(global-set-key (kbd "C-c p") 'mt3-new-part)
(global-set-key (kbd "C-c d") 'journal-new-dream-post)
(global-set-key (kbd "C-c n") 'journal-new-japanese-post)
(global-set-key (kbd "C-c y") 'hugo-youtube)
(global-set-key (kbd "C-c r") 'ruby-tag-create-region)
(global-set-key (kbd "C-c 3") 'markdown-timestamp-short)
(global-set-key (kbd "C-c #") 'markdown-timestamp-full)
(global-set-key (kbd "C-c t") 'markdown-timestamp-short)
(global-set-key (kbd "C-c T") 'markdown-timestamp-full)

(global-set-key (kbd "C-c l") 'eval-buffer)

(fset 'journal-go-to-directory
   [?\C-x ?\C-f ?~ ?/ ?j ?o ?u ?r ?n ?a ?l ?/ ?2 ?0 ?1 ?6 ?/ ?0 ?3 return escape ?>])
(global-set-key (kbd "C-c c") 'journal-dired-journal)

(fset 'create-thumbs-with-b\.robnugen\.com-image-url-on-single-line
   [?\C-e ?\C-r ?/ return ?\C-f ?\C-k ?\C-y ?\C-x ?b ?* ?j ?h ?h ?g ?a ?a return ?\C-y backspace backspace backspace backspace ?\C-a escape ?x ?r ?e ?p ?l tab ?s ?t tab return ?_ return ?  return ?\C-a ?\C-k ?\C-x ?k return ?\C-a ?\[ ?! ?\[ ?\C-y ?\] ?\( ?\C-s ?/ ?/ return ?\C-b ?\C-b ?\C-w ?\C-f ?\C-f ?\C-b ?\C-b ?\C-k ?\) ?\] ?\( ?\C-y ?\) ?\C-a return ?\C-p ?\C-y ?\C-r ?/ return ?/ ?t ?h ?u ?m ?b ?s ?\C-a ?\C-k ?\C-d ?\C-s ?\] ?\( ?\) ?\] return left left ?\C-y ?\C-a ?\C-n])

(global-set-key (kbd "C-c !") 'create-thumbs-with-b\.robnugen\.com-image-url-on-single-line)

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(el-get 'sync)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-recursive-copies (quote always))
 '(line-move-visual nil)
 '(package-selected-packages (quote (elmacro)))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
