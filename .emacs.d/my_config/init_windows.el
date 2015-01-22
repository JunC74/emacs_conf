;; 启动最大化
(run-with-idle-timer 1 nil 'w32-send-sys-command 61488)

;; Emacs只启动一个进程的方法
;; 首先，我们必须设置一个环境变量：
;; EMACS_SERVER_FILE=C:\.emacs.d\server\server
;;(setq server-use-tcp t)
(server-start)

;; windows cygwin 路径设置
(setenv "PATH" (concat "C:/cygwin64/bin;" (getenv "PATH")))
(setenv "PATH" (concat "z:/soft/emacs-24.3/global/bin;" (getenv "PATH")))

(setq exec-path (append exec-path '("z:/soft/emacs-24.3/global/bin")))
;; 初始化cygwin环境
(require 'init_cygwin)
;;(require 'init_project)

;; 设置Tex
;; (setq TeX-view-program-list
;;       '(("SumatraPDF "D:/soft/SumatraPDF-3.0/SumatraPDF.exe %o")))

(project-def "xy-h"
      '((basedir          "C:/Users/JunC/code/xoyo_head")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(idle-index t)
		(tags-file "C:/Users/JunC/code/xoyo_head/TAGS")
		;; (file-list-cache "z:/code/xoyo/xoyo_head/files")
		;; (open-files-cache "z:/code/xoyo/xoyo_head/open-files")
        ;(open-files-cache "p_cache")
        ;;(startup-hook    project-index)
        ))

(project-def "xy-b"
      '((basedir          "C:/Users/JunC/code/xoyo_branches")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(idle-index t)
		(tags-file "C:/Users/JunC/xoyo_branches/TAGS")
		;; (file-list-cache "z:/code/xoyo/xoyo_head/files")
		;; (open-files-cache "z:/code/xoyo/xoyo_head/open-files")
        ;(open-files-cache "p_cache")
        ;;(startup-hook    project-index)
        ))

(project-def "9k-h"
      '((basedir          "C:/Users/JunC/code/9k_head")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(idle-index t)
		(tags-file "C:/Users/JunC/code/9k_head/TAGS")
		;; (file-list-cache "z:/code/xoyo/xoyo_head/files")
		;; (open-files-cache "z:/code/xoyo/xoyo_head/open-files")
        ;(open-files-cache "p_cache")
        ;;(startup-hook    project-index)
        ))

(project-def "9k-b"
      '((basedir          "C:/Users/JunC/code/9k_branches")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(idle-index t)
		(tags-file "C:/Users/JunC/code/9k_branches/TAGS")
		;; (file-list-cache "z:/code/xoyo/xoyo_head/files")
		;; (open-files-cache "z:/code/xoyo/xoyo_head/open-files")
        ;(open-files-cache "p_cache")
        ;;(startup-hook    project-index)
        ))

(project-def "vn-h"
      '((basedir          "C:/Users/JunC/code/vn_head")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(idle-index t)
		(tags-file "C:/Users/JunC/code/vn_head/TAGS")
		;; (file-list-cache "z:/code/xoyo/xoyo_head/files")
		;; (open-files-cache "z:/code/xoyo/xoyo_head/open-files")
        ;(open-files-cache "p_cache")
        ;;(startup-hook    project-index)
        ))

(project-def "vn-b"
      '((basedir          "C:/Users/JunC/code/vn_branches")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(idle-index t)
		(tags-file "C:/Users/JunC/code/vn_branches/TAGS")
		;; (file-list-cache "z:/code/xoyo/xoyo_head/files")
		;; (open-files-cache "z:/code/xoyo/xoyo_head/open-files")
        ;(open-files-cache "p_cache")
        ;;(startup-hook    project-index)
        ))

(project-def "jw-h"
      '((basedir          "C:/Users/JunC/code/jw_head")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(idle-index t)
		(tags-file "C:/Users/JunC/code/jw_head/TAGS")
		;; (file-list-cache "z:/code/xoyo/xoyo_head/files")
		;; (open-files-cache "z:/code/xoyo/xoyo_head/open-files")
        ;(open-files-cache "p_cache")
        ;;(startup-hook    project-index)
        ))

(project-def "jw-b"
      '((basedir          "C:/Users/JunC/code/jw_branches")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(idle-index t)
		(tags-file "C:/Users/JunC/code/jw_branches/TAGS")
		;; (file-list-cache "z:/code/xoyo/xoyo_head/files")
		;; (open-files-cache "z:/code/xoyo/xoyo_head/open-files")
        ;(open-files-cache "p_cache")
        ;;(startup-hook    project-index)
        ))

(project-def "f-h"
      '((basedir          "c:/Users/JunC/code/FFF")
        (src-patterns     ("*.lua"))
        (subdir     ("client/scripts/" "server/zone_scripts/" "server/world_scripts/" "server/store_scripts/" "server/tool_scripts/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(idle-index t)
		(tags-file "c:/Users/JunC/code/FFF/TAGS")
		;; (file-list-cache "z:/code/xoyo/xoyo_head/files")
		;; (open-files-cache "z:/code/xoyo/xoyo_head/open-files")
        ;(open-files-cache "p_cache")
        ;;(startup-hook    project-index)
        ))
		
(provide 'init_windows)

