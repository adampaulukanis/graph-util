(defpackage #:graph-util/tests/main
  (:use #:cl
        #:graph-util
        #:rove))

(in-package #:graph-util/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :graph-util)' in your Lisp.

(deftest dot-name
  (testing "Only letters, digits and underscore are accepted"
    (ok (string= "LIVING_ROOM" (graph-util::dot-name 'living-room)))
    (ok (string= "FOO_" (graph-util::dot-name 'foo!)))
    (ok (string= "24" (graph-util::dot-name '24)))))

(defparameter *wizard-nodes* '((living-room (you are in the living-room. a wizard is snoring loudly on the couch.))
                               (garden (you are in a beautiful garden. there is a well in fron of you.))
                               (attic (you are in the attic. there is a giant welding torch in the corner.))))

(deftest dot-label
  (testing "short string will be as is (less than 30 characters)"
    (ok (string= (graph-util::dot-label "adam") "\"adam\""))
    (ok (string= (graph-util::dot-label '(adam)) "(ADAM)")))
  (testing "if the string is longer than the limit, it gets cropped, and an ellipsis is added to indicate that fact"
    (ok (string= (graph-util::dot-label '(hello how are you? I am fine and good)) "(HELLO HOW ARE YOU? I AM FI..."))))

(deftest nodes->dot
  (testing "generate the DOT information for the nodes in the wizard's house"
    (graph-util::nodes->dot *wizard-nodes*)))
