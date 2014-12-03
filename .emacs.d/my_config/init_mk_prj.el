(require 'mk-prj)

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

(project-def "xoyo"
      '((basedir          "z:/code/xoyo/xoyo_head/")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(tags-file "z:/code/xoyo/xoyo_head/TAGS")
		;; (file-list-cache "z:/code/xoyo/xoyo_head/files")
		;; (open-files-cache "z:/code/xoyo/xoyo_head/open-files")
        ;(open-files-cache "p_cache")
        ;;(startup-hook    project-index)
        ))

(project-def "jw_head"
      '((basedir          "z:/code/xoyo/jw_head/")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(tags-file "z:/code/xoyo/jw_head/TAGS")
        ;(open-files-cache "p_cache")
        (startup-hook    project-index)
        ))

(project-def "9k_head"
      '((basedir          "z:/code/xoyo/9k_head/")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(tags-file "z:/code/xoyo/9k_head/TAGS")
        ;(open-files-cache "p_cache")
        (startup-hook    project-index)
        ))

(project-def "vn_head"
      '((basedir          "z:/code/xoyo/vn_head/")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(tags-file "z:/code/xoyo/vn_head/TAGS")
        ;(open-files-cache "p_cache")
        (startup-hook    project-index)
        ))


(provide 'init_mk_prj)
