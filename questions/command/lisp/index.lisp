(defun command (s)
  (cond
    ((and (listp s) (every #'is-perfect s))
     (perfect))
    ((and (listp s) (every #'(lambda (e) (or (is-perfect e) (is-great e))) s))
     (full-combo))
    (t
     (failed))))

(defun is-perfect (s)
  (equal s :perfect))

(defun is-great (s)
  (equal s :great))

(defun perfect ()
  "All Perfect")

(defun full-combo ()
  "Full Combo")

(defun failed ()
  "Failed")
