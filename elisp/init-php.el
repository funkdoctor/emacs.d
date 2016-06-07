(require 'php-eldoc)
(require 'php-mode)
(require 'geben)
(defun fbn/php-hook ()
  (c-set-style "stroustrup")
  (c-set-offset 'case-label' 4)
  (local-unset-key (kbd "C-."))
  (local-set-key (kbd "C-c C-n") 'fbn/php-insert-namespace)
  (local-set-key (kbd "C-c C-p") 'fbn/php-goto-parent-class)
  (php-eldoc-enable)
;  (ggtags-mode)
  (helm-gtags-mode)
  (flycheck-mode)
  (local-set-key
   (kbd "<f6>")
   (defhydra hydra-php-geben (:exit t)
     "geben debugger"
     ("y" (lambda () (interactive)
            (if (not dbgp-listeners)
                (call-interactively 'geben))) "start")
     ("n" (lambda () (interactive)
            (if dbgp-listeners
                (call-interactively 'geben-end))) "stop")
     ("q" nil nil))))
(add-hook 'php-mode-hook 'fbn/php-hook)

;; Add function to insert namespace
(defun fbn/php-insert-namespace ()
  "Add namespace to PHP file"
  (interactive)
  (let ((parts (butlast (cdr (s-split "/" buffer-file-name)))))
    (if (projectile-project-p)
        (setq parts (member (projectile-project-name) parts)))
    (goto-line 3)
    (if (s-equals? (word-at-point) "namespace")
        (kill-line 1)
      (open-line 1))
    (insert "namespace " (s-join "\\" parts) ";")
    (newline)))

;; Add function to go to parent class
(defun fbn/php-goto-parent-class ()
  "Add namespace to PHP file"
  (interactive)
  (goto-line 1)
  (if (and (search-forward-regexp "^\\(abstract \\)?class" nil t)
           (search-forward-regexp "extends " nil t))
      (helm-gtags-dwim)))


(provide 'init-php)
