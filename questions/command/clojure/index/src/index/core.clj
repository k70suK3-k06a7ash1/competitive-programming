
(ns index.core
  (:require [index.command :refer [is-equal-perfect is-equal-great]]
            [index.judge :refer [perfect full-combo failed]]))

(defn main [s]
  (cond
    (every? is-equal-perfect s) perfect
    (every? #(or (is-equal-perfect %) (is-equal-great %)) s) full-combo
    :else failed))
