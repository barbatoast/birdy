(import spork/json :as json)
(use ./utils)

(defn distance-in-kilometers [a b]
  (def a-lat (* (a :latitude) 110.587002))
  (def b-lat (* (b :latitude) 110.587002))
  (def a-long (* (a :longitude) 82.4574895))
  (def b-long (* (b :longitude) 82.4574895))
  (def x-squared (* (- a-lat b-lat) (- a-lat b-lat)))
  (def y-squared (* (- a-long b-long) (- a-long b-long)))
  (math/sqrt (+ x-squared y-squared)))

(defn distance-in-miles [a b]
  (/ (distance-in-kilometers a b) 1.60934))

(defn main [&]
  (def locations (map keywordize-json (json/decode (slurp "locations.json"))))
  (def distance (distance-in-miles (first locations) (last locations)))
  (print (string/format "Distance between landmarks %.2f m" distance)))
