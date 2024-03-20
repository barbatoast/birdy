(declare-project
  :name "birdy"
  :description "Bird's-eye view of city landmarks"
  :dependencies ["https://github.com/janet-lang/spork.git"])

(declare-source
  :prefix "birdy"
  :source ["birdy/main.janet"
           "birdy/utils.janet"])

(declare-executable
 :name "birdy"
 :entry "birdy/main.janet")

(task "dev" []
  (shell "janet birdy/main.janet"))
