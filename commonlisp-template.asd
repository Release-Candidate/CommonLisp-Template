; SPDX-FileCopyrightText:  Copyright 2024 Roland Csaszar
; SPDX-License-Identifier: MIT
;
; Project:  CommonLisp-Template
; File:     commonlisp-template.asd
; Date:     12.Jun.2024
;
; ==============================================================================

(asdf:defsystem #:commonlisp-template
  :author "Release Candidate; rec@gmx.at"
  :licence "MIT"
  :version "0.1.0"
  :description "This is a project template for a Common Lisp system using ocicl as system manager."
  :serial t
  :build-operation "program-op"
  :build-pathname "../commonlisp-template"
  :entry-point "commonlisp-template:main"
  :depends-on ()
  :pathname "src/"
  :components ((:file "package")
               (:file "main"))
  :in-order-to ((test-op (test-op :commonlisp-template/test))))

(asdf:defsystem #:commonlisp-template/test
  :author "Release Candidate; rec@gmx.at"
  :licence "MIT"
  :version "0.1.0"
  :description "This contains the tests of the system `commonlisp-template`."
  :serial t
  :depends-on ("commonlisp-template" "lisp-unit2" "parachute")
  :pathname "test/"
  :components ((:file "package")
               (:file "main-test"))
  :perform (test-op (op system) (symbol-call :commonlisp-template/test :run-tests)))
