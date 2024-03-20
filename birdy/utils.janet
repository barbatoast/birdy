(defn keywordize-json [m]
  (table ;(mapcat (fn [[k v]] [(keyword k) v]) (pairs m))))
