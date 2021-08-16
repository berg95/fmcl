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
