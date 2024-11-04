(ns index.helper
  (:require [command :refer [is-equal-perfect is-equal-great]]))

(defn is-perfect [s]
  (is-equal-perfect s))

(defn is-great [s]
  (is-equal-great s))