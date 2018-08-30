;; A comment!
(defn qsort [L]
  (if (empty? L) 
      '()
      (let [[pivot & L2] L]
           (lazy-cat (qsort (for [y L2 :when (<  y pivot)] y))
                     (list pivot)
                     (qsort (for [y L2 :when (>= y pivot)] y))))))

(defn qsort3 [[pivot :as coll]]
  (when pivot
    (lazy-cat (qsort (filter #(< % pivot) coll))
              (filter #{pivot} coll)
              (qsort (filter #(> % pivot) coll)))))

(def bit-bucket-writer
  (proxy [java.io.Writer] []
    (write [buf] nil)
    (close []    nil)
    (flush []    nil)))

(defmacro noprint
  "Evaluates the given expressions with all printing to *out* silenced."
  [& forms]
  `(binding [*out* bit-bucket-writer]
     ~@forms))

(noprint
  (println "Hello, nobody!"))

(defn run [nvecs nitems nthreads niters]
  (let [vec-refs (->> (range (* nvecs nitems)) (partition nitems) (map (comp ref vec)) vec)
        swap #(let [v1 (rand-int nvecs)
                    v2 (rand-int nvecs)
                    i1 (rand-int nitems)
                    i2 (rand-int nitems)]
                (dosync
                 (let [tmp (nth @(vec-refs v1) i1)]
                   (alter (vec-refs v1) assoc i1 (nth @(vec-refs v2) i2))
                   (alter (vec-refs v2) assoc i2 tmp))))
        report #(let [derefed (map deref vec-refs)]
                  (prn derefed)
                  (println "Distinct:" (->> derefed (apply concat) distinct count)))]
    (report)
    (dorun (apply pcalls (repeat nthreads #(dotimes [_ niters] (swap)))))
    (report)))

(run 100 10 10 100000)
