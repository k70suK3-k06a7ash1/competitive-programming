(defun calc (height weight)
  (let* ((unit (/ height 100.0))
         (denominator (* unit unit)))
    (format t "~f~%" denominator)
    (round (/ weight denominator))))

(defun rate (bmi)
  (cond
    ((< bmi 20) "A")
    ((and (> bmi 20) (< bmi 25)) "B")
    ((>= bmi 25) "C")))
