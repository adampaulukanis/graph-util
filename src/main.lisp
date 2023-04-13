(defpackage #:graph-util
  (:use #:cl)
  (:export #:dot-name))
(in-package #:graph-util)

(defun dot-name (exp)
  (substitute-if #\_ (complement #'alphanumericp) (prin1-to-string exp)))
