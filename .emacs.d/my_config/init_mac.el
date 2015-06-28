(require 'init_mk_prj)
(project-def "xy-h"
      '((basedir          "C:/Users/JunC/code/xoyo_head")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(pre-startup-hook xoyo-project-init)
		(shutdown-hook shutdown-hook)
        ))

(project-def "xy-b"
      '((basedir          "e:/code/xoyo_branches")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(pre-startup-hook xoyo-project-init)
		(shutdown-hook shutdown-hook)
        ))

(project-def "9k-h"
      '((basedir          "C:/Users/JunC/code/9k_head")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(pre-startup-hook xoyo-project-init)
		(shutdown-hook shutdown-hook)
        ))

(project-def "9k-b"
      '((basedir          "e:/code/xoyo/9k_branches/")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(pre-startup-hook xoyo-project-init)
		(shutdown-hook shutdown-hook)
        ))

(project-def "vn-h"
      '((basedir          "C:/Users/JunC/code/vn_head")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(tags-file "C:/Users/JunC/code/vn_head/TAGS")
		(pre-startup-hook xoyo-project-init)
		(shutdown-hook shutdown-hook)
        ))

(project-def "vn-b"
      '((basedir          "e:/code/xoyo/vn_branches")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(pre-startup-hook xoyo-project-init)
		(shutdown-hook shutdown-hook)
        ))

(project-def "jw-h"
      '((basedir          "C:/Users/JunC/code/jw_head")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(pre-startup-hook xoyo-project-init)
		(shutdown-hook shutdown-hook)
        ))

(project-def "jw-b"
      '((basedir          "e:/code/xoyo/jw_branches")
        (src-patterns     ("*.lua"))
        (subdir     ("common_script/" "zone_scripts/" "server_scripts/" "script/" "ui/script/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(pre-startup-hook xoyo-project-init)
		(shutdown-hook shutdown-hook)
        ))

(project-def "f-h"
      '((basedir          "~/Documents/work/fff/trunk/")
        (src-patterns     ("*.lua" "*.h" "*.c" "*.cpp"))
        (subdir     ("client/scripts/" "server/zone_scripts/" "server/world_scripts/" "server/store_scripts/" "server/tool_scripts/" "server/cross_scripts/" "server/gateway_scripts/" "code/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(pre-startup-hook fff-project-init)
		(shutdown-hook shutdown-hook)
        ))

(project-def "f-vn"
      '((basedir          "~/Documents/work/fff/vn/")
        (src-patterns     ("*.lua"))
        (subdir     ("client/scripts/" "server/zone_scripts/" "server/world_scripts/" "server/store_scripts/" "server/tool_scripts/" "server/gateway_scripts/"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(pre-startup-hook fff-project-init)
		(shutdown-hook shutdown-hook)
        ))

(project-def "f-tongbutui"
      '((basedir          "~/Documents/work/fff/tongbutui/")
        (src-patterns     ("*.lua"))
        (subdir     ("client/scripts/" "server/zone_scripts/" "server/world_scripts/" "server/store_scripts/" "server/tool_scripts/" "server/gateway_scripts/" "server/cross_scripts"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(pre-startup-hook fff-project-init)
		(shutdown-hook shutdown-hook)
        ))

(project-def "f-tongbutui-sos"
      '((basedir          "~/Documents/work/fff/tongbutui_sos/")
        (src-patterns     ("*.lua"))
        (subdir     ("client/scripts/" "server/zone_scripts/" "server/world_scripts/" "server/store_scripts/" "server/tool_scripts/" "server/gateway_scripts/" "server/cross_scripts"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(pre-startup-hook fff-project-init)
		(shutdown-hook shutdown-hook)
        ))

(project-def "f-apple"
      '((basedir          "~/Documents/work/fff/ks/")
        (src-patterns     ("*.lua"))
        (subdir     ("client/scripts/" "server/zone_scripts/" "server/world_scripts/" "server/store_scripts/" "server/tool_scripts/" "server/gateway_scripts/" "server/cross_scripts"))
        (vcs              svn)
		(open-file-cache t)
		(open-file-cache-maxn 10)
		(pre-startup-hook fff-project-init)
		(shutdown-hook shutdown-hook)
        ))

;; emacs TAGS
;; (setq tags-table-list 
;; 	  '("c:/Program Files/emacs-24.4-bin-i686-pc-mingw32/share/emacs/TAGS"
;; 		"d:/Users/JunC/Documents/GitHub/emacs_conf/.emacs.d/TAGS")) 

(provide 'init_mac)

