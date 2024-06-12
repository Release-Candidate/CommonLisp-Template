# Common Lisp Project Template

This is a template for a Common Lisp project using Ocicl for package management.

- [Lisp Systems (Packages) Used](#lisp-systems-packages-used)
- [Usage](#usage)
  - [Running Tests](#running-tests)
- [License](#license)

## Lisp Systems (Packages) Used

- [Ocicl](https://github.com/ocicl/ocicl) as system (package) manager

## Usage

### Running Tests

To run all tests defined by function `run-tests` in file [./test/main-test.lisp](./test/main-test.lisp) either call ASDF's test runner in a REPL:

```lisp
(asdf:test-system :commonlisp-template)
```

or evaluate it on the command line, for example using SBCL:

```shell
sbcl --non-interactive --eval '(asdf:test-system :commonlisp-template)'
```

For the configuration of the test runner, see the definition of system `commonlisp-template/test` in file [./commonlisp-template.asd](./commonlisp-template.asd)

## License

This template is licensed under the MIT license, see file [./LICENSE](./LICENSE)
