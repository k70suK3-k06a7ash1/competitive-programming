;; bmi.lispから関数をロード
(load "bmi.lisp")

(defun test-calc ()
  (let ((result (calc 170 65)))
    (if (= result 22)
        (format t "calc test passed~%")
        (format t "calc test failed: expected 22 but got ~a~%" result))))

(defun test-rate ()
  (let ((result-a (rate 18))
        (result-b (rate 22))
        (result-c (rate 28)))
    (if (and (string= result-a "A")
             (string= result-b "B")
             (string= result-c "C"))
        (format t "rate test passed~%")
        (format t "rate test failed~%"))))

(defun run-tests ()
  (test-calc)
  (test-rate))

(run-tests)
