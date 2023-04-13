(defsystem "graph-util"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "graph-util/tests"))))

(defsystem "graph-util/tests"
  :author ""
  :license ""
  :depends-on ("graph-util"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for graph-util"
  :perform (test-op (op c) (symbol-call :rove :run c)))
