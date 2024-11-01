(ns index.core)

(defn calc [height weight]
  (let [unit (/ height 100)
        denominator (* unit unit)]
        ;; double型からfloat型へキャスト
    (Math/round (float (/ weight denominator)))))

(defn rate [bmi]
  (cond
    (< bmi 20) "A"
    (and (> bmi 20) (< bmi 25)) "B"
    (>= bmi 25) "C"))
