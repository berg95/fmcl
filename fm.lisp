;; football simulator in common lisp
(defvar *fmtb* nil)

;; will be used to init the teams
(defun add-team (name power)
  (push (list :name name :power power) *fmtb*))

;; old version testing
;;(defun get-elem (teams num data)
;;  (getf (nth num teams) data))

(defun get-name (list)
  (getf list :name))

;; will strictly store all of the names in the game
(defvar *team-names* nil)

;; dumps all of the names of teams from *fmtb* to *team-names*
;; ONLY RUN ONCE
(defun init-names ()
  (loop for x in *fmtb*
	do (push (get-name x) *team-names*)))

;; test
(defun print-data ()
  (loop for x in *fmtb*
	do (print x)))

(defun sim-match (t1 t2)
  (setf 1score (random 5))
  (setf 2score (random 5))
  (format t "~S ~d - ~d ~S" t1 1score 2score t2))

(defvar *leaguetable* nil)

;; initializes table info with every team listed in *team-names*
(defun init-table ()
  (loop for team in *team-names*
	do (push
	    (list :name team :w 0 :d 0 :l 0 :gf 0 :ga 0 :pts 0)
	    *leaguetable*)))

;; will print a nice looking info for each team
(defun table ()
  (dolist (team *leaguetable*)
    (format t "~{~a:~6t~a~%~}~%" team)))

;; run this after adding your desired teams via add-team
(defun setup ()
  (init-names)
  (init-table))


