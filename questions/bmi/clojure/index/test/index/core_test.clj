;; (ns index.core-test
;;   (:require [clojure.test :refer :all]
;;             [index.core :refer :all]))

;; (deftest a-test
;;   (testing "FIXME, I fail."
;;     (is (= 0 1))))

(ns index.core-test
  (:require [clojure.test :refer :all]
            [index.core :refer :all]))

(deftest test-calc
  (testing "BMI calculation"
    (is (= 22 (calc 170 65)))
    (is (= 25 (calc 180 80)))
    ))

(deftest test-rate
  (testing "BMI rating"
    (is (= "A" (rate 19)))
    (is (= "B" (rate 22)))
    (is (= "C" (rate 26)))))

(defn -main []
  (run-tests 'index-test))
