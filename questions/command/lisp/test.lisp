(load "index")
(defun run-tests ()
  (format t "Running tests...~%")
  
  ;; Test 1: All elements are :perfect
  (let ((test1 (command '(:perfect :perfect :perfect))))
    (assert (string= test1 "All Perfect"))
    (format t "Test 1 passed~%"))

  ;; Test 2: All elements are either :perfect or :great
  (let ((test2 (command '(:perfect :great :perfect :great))))
    (assert (string= test2 "Full Combo"))
    (format t "Test 2 passed~%"))

  ;; Test 3: Elements contain something other than :perfect or :great
  (let ((test3 (command '(:perfect :great :good))))
    (assert (string= test3 "Failed"))
    (format t "Test 3 passed~%"))

  ;; Test 4: Empty list (edge case)
  (let ((test4 (command '())))
    (assert (string= test4 "All Perfect"))
    (format t "Test 4 passed~%"))

  (format t "All tests completed.~%"))

(run-tests)
