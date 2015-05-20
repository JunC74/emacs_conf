;;(require 'mk-project)
(load-file "~/.emacs.d/plugins/mk-prj.el")
(project-init)


(global-set-key [(f1)] 'project-grep)
(global-set-key [(f2)] 'project-find-file)
(global-set-key [(f6)] 'project-multi-occur)

(global-set-key [(f10)] 'project-find-tag)   
(global-set-key [(f11)] 'pop-tag-mark)
(global-set-key [(f12)] 'project-find-tag-exact)  ;�������Ψһtag��ֱ����ת�����tag���г�����ƥ��tag��ѡ�� 
;project-find-tag-exact��project-find-tag�������ǻ�match word
(global-set-key (kbd "C-c p l") 'project-load)
(global-set-key (kbd "C-c p u") 'project-unload)
(global-set-key (kbd "C-c p i") 'project-index)
(global-set-key (kbd "C-c p s") 'project-status)
(global-set-key (kbd "C-c p d") 'project-dired)
(global-set-key (kbd "C-c p t") 'project-tags)

(defun xoyo-project-init ()
  "���á���ң���������̵ı����ʽ"
  (prefer-coding-system 'gb2312))

(defun fff-project-init()
  "���á����ɡ����̵ı����ʽ"
  (prefer-coding-system 'utf-8))

(defun shutdown-hook()
  "�ָ�Ϊutf-8��ʽ"
  (prefer-coding-system 'utf-8))

(provide 'init_mk_prj)
