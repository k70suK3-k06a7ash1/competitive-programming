(ns index.command)

(def perfect "perfect")
(def great "great")
(def good "good")
(def bad "bad")
(def miss "miss")

(defn is-equal-perfect [s]
  (= s perfect))

(defn is-equal-great [s]
  (= s great))
