; SPDX-FileCopyrightText:  Copyright 2024 Roland Csaszar
; SPDX-License-Identifier: MIT
;
; Project:  CommonLisp-Template
; File:     main-test.lisp
; Date:     12.Jun.2024
;
; ==============================================================================

(in-package :commonlisp-template/test)

(lisp-unit2:define-test fib-naive-8
                        (:tags '(bar))
                        (lisp-unit2:assert-eql 1 (commonlisp-template:fib-naive 8)))

(lisp-unit2:define-test fib-naive-list
                        (:tags '(bar))
                        (lisp-unit2:assert-equal
                         '(1 1 2 3 5 8 14 21 34)
                         (mapcar #'commonlisp-template:fib-naive (list 1 2 3 4 5 6 7 8 9))))

(defun run-tests ()
  "The main entry point of the tests. Run all tests."
  (lisp-unit2:run-tests :package :commonlisp-template/test
                        :run-contexts #'lisp-unit2:with-summary-context))
