(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(require 'ace-jump-buffer)
(setq ajb--bs-attributes-list '(("" 2 2 left " ")
                                ("" 1 1 left bs--get-marked-string)
                                ("" 1 1 left " ")
                                ("Buffer" bs--get-name-length 10 left bs--get-name)
                                ("" 3 3 left " ")
                                ("Mode" 20 20 left bs--get-mode-name)
                                ("" 2 2 left " ")
                                ("Filename" 70 10 left bs--get-file-name)))
(define-key global-map (kbd "C-c b") 'ace-jump-buffer)

(require 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)
(global-set-key (kbd "M-o") 'ace-window)


(provide 'init-ace)
