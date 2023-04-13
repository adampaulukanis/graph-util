(defpackage graph-util/tests/main
  (:use :cl
        :graph-util
        :rove))
(in-package :graph-util/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :graph-util)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
