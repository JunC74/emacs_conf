((ample-regexps status "installed" recipe
		(:name ample-regexps :description "Compose and reuse Emacs regular expressions with ease" :type github :pkgname "immerrr/ample-regexps.el"))
 (auto-complete status "installed" recipe
		(:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
		       (popup fuzzy pos-tip)
		       :features auto-complete-config :post-init
		       (progn
			 (add-to-list 'ac-dictionary-directories
				      (expand-file-name "dict" default-directory))
			 (ac-config-default))))
 (cl-lib status "installed" recipe
	 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (color-theme status "installed" recipe
	      (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
		     ("xzf")
		     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
		     (progn
		       (color-theme-initialize)
		       (setq color-theme-is-global t))))
 (color-theme-solarized status "installed" recipe
			(:name color-theme-solarized :description "Emacs highlighting using Ethan Schoonover's Solarized color scheme" :type github :pkgname "sellout/emacs-color-theme-solarized" :depends color-theme :prepare
			       (progn
				 (add-to-list 'custom-theme-load-path default-directory)
				 (autoload 'color-theme-solarized-light "color-theme-solarized" "color-theme: solarized-light" t)
				 (autoload 'color-theme-solarized-dark "color-theme-solarized" "color-theme: solarized-dark" t))))
 (csv-mode status "installed" recipe
	   (:name csv-mode :website "http://www.emacswiki.org/emacs/CsvMode" :description "Major mode for editing CSV (comma separated value) files." :type elpa :prepare
		  (autoload 'csv-mode "csv-mode" nil t)))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (dired+ status "installed" recipe
	 (:name dired+ :description "Extensions to Dired" :type emacswiki :features dired+))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:load "el-get.el" :post-init
		(when
		    (memq 'el-get
			  (bound-and-true-p package-activated-list))
		  (message "Deleting melpa bootstrap el-get")
		  (unless package--initialized
		    (package-initialize t))
		  (when
		      (package-installed-p 'el-get)
		    (let
			((feats
			  (delete-dups
			   (el-get-package-features
			    (el-get-elpa-package-directory 'el-get)))))
		      (el-get-elpa-delete-package 'el-get)
		      (dolist
			  (feat feats)
			(unload-feature feat t))))
		  (require 'el-get))))
 (epl status "installed" recipe
      (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (flymake-lua status "installed" recipe
	      (:name flymake-lua :website "https://github.com/sroccaserra/emacs/blob/master/flymake-lua.el" :description "Flymake support for Lua." :type http :url "https://raw.github.com/sroccaserra/emacs/master/flymake-lua.el" :post-init
		     (add-hook 'lua-mode-hook 'flymake-lua-load)))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (glsl-mode status "installed" recipe
	    (:name glsl-mode :type github :description "major mode for Open GLSL shader files" :pkgname "jimhourihan/glsl-mode" :features glsl-mode))
 (gtags status "installed" recipe
	(:name gtags :type http :url "http://cvs.savannah.gnu.org/viewvc/*checkout*/global/global/gtags.el" :description "gtags facility for Emacs" :website "http://www.gnu.org/software/global/"))
 (highlight status "installed" recipe
	    (:type github :pkgname "emacsmirror/highlight" :name highlight :description "Highlighting commands." :type emacsmirror))
 (highlight-symbol status "installed" recipe
		   (:name highlight-symbol :description "Quickly highlight a symbol throughout the buffer and cycle through its locations." :type github :pkgname "nschum/highlight-symbol.el"))
 (ibuffer-vc status "installed" recipe
	     (:name ibuffer-vc :description "Group ibuffer's list by VC project, or show VC status" :type github :pkgname "purcell/ibuffer-vc"))
 (ido-vertical-mode status "installed" recipe
		    (:name ido-vertical-mode :type github :pkgname "rson/ido-vertical-mode.el" :description "makes ido-mode display vertically"))
 (let-alist status "installed" recipe
	    (:name let-alist :description "Easily let-bind values of an assoc-list by their names." :builtin "25.1" :type http :url "http://git.savannah.gnu.org/cgit/emacs.git/plain/lisp/let-alist.el"))
 (linum-ex status "installed" recipe
	   (:name linum-ex :description "Display line numbers to the left of buffers" :type emacswiki :features linum-ex))
 (lua-mode status "installed" recipe
	   (:name lua-mode :description "A major-mode for editing Lua scripts" :depends
		  (ample-regexps)
		  :type github :pkgname "immerrr/lua-mode"))
 (package status "installed" recipe
	  (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/ba08b24186711eaeb3748f3d1f23e2c2d9ed0d09:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
		 (progn
		   (let
		       ((old-package-user-dir
			 (expand-file-name
			  (convert-standard-filename
			   (concat
			    (file-name-as-directory default-directory)
			    "elpa")))))
		     (when
			 (file-directory-p old-package-user-dir)
		       (add-to-list 'package-directory-list old-package-user-dir)))
		   (setq package-archives
			 (bound-and-true-p package-archives))
		   (mapc
		    (lambda
		      (pa)
		      (add-to-list 'package-archives pa 'append))
		    '(("ELPA" . "http://tromey.com/elpa/")
		      ("melpa" . "http://melpa.org/packages/")
		      ("gnu" . "http://elpa.gnu.org/packages/")
		      ("marmalade" . "http://marmalade-repo.org/packages/")
		      ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (pkg-info status "installed" recipe
	   (:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
		  (dash epl)))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :pkgname "auto-complete/popup-el"))
 (pos-tip status "installed" recipe
	  (:name pos-tip :description "Show tooltip at point" :type emacswiki))
 (session status "installed" recipe
	  (:name session :description "When you start Emacs, package Session restores various variables (e.g., input histories) from your last session. It also provides a menu containing recently changed/visited files and restores the places (e.g., point) of such a file when you revisit it." :type http-tar :options
		 ("xzf")
		 :load-path
		 ("lisp")
		 :url "http://downloads.sourceforge.net/project/emacs-session/session/session-2.3a.tar.gz"))
 (window-number status "installed" recipe
		(:type github :pkgname "emacsmirror/window-number" :name window-number :description "Select windows by numbers" :type emacsmirror :prepare
		       (progn
			 (autoload 'window-number-mode "window-number" "A global minor mode that enables selection of windows according to\nnumbers with the C-x C-j prefix.  Another mode,\n`window-number-meta-mode' enables the use of the M- prefix." t)
			 (autoload 'window-number-meta-mode "window-number" "A global minor mode that enables use of the M- prefix to select\nwindows, use `window-number-mode' to display the window numbers in\nthe mode-line." t)
			 (defun window-number-mode-on nil "Turn on `window-number-mode' mode."
				(interactive)
				(window-number-mode 1))
			 (defun window-number-meta-mode-on nil "Turn on `window-number-meta-mode' mode."
				(interactive)
				(window-number-meta-mode 1))))))
