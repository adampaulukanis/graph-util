(defpackage #:graph-util/tests/main
  (:use #:cl
        #:graph-util
        #:rove))
(in-package #:graph-util/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :graph-util)' in your Lisp.

(deftest dot-name
  (testing "Only letters, digits and underscore are accepted"
    (ok (string= "LIVING_ROOM" (dot-name 'living-room)))
    (ok (string= "FOO_" (dot-name 'foo!)))
    (ok (string= "24" (dot-name '24)))))
