(ns index.core-test
  (:require [clojure.test :refer :all]
            [index.core :refer :all]
            [index.judge :refer [perfect full-combo failed]]))

(deftest test-command
  (testing "All elements are 'perfect'"
    (is (= (main ["perfect" "perfect" "perfect"]) perfect)))

  (testing "All elements are either 'perfect' or 'great'"
    (is (= (main ["perfect" "great" "perfect"]) full-combo)))

  (testing "Contains elements other than 'perfect' or 'great'"
    (is (= (main ["perfect" "good" "perfect"]) failed)))

  (testing "Empty list"
    (is (= (main ["good"]) failed))))


(defn -main []
  (run-tests 'index-test))