;;; init-company.el --- Company completion engine configuration
;;; Commentary:
;;; Code:

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 2)
  (setq company-dabbrev-downcase nil)
  (setq company-show-numbers t))

;; Remap company navigation keys
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

(global-company-mode)

(add-hook 'emacs-lisp-mode-hook 'company-mode)

(add-hook 'org-mode-hook 'company-mode)

(provide 'init-company)
;;; init-company.el ends here
