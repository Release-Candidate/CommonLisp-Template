# Common Lisp Project Template

This is a template for a Common Lisp project using Ocicl for package management.

- [Lisp Systems (Packages) Used](#lisp-systems-packages-used)
- [Usage](#usage)
  - [Downloading Systems](#downloading-systems)
  - [Running Tests](#running-tests)
  - [Generate the Executable](#generate-the-executable)
- [License](#license)

## Lisp Systems (Packages) Used

- [Ocicl](https://github.com/ocicl/ocicl) as system (package) manager

## Usage

To be able to download all needed systems, [Ocicl](https://github.com/ocicl/ocicl) must be installed and setup to work in your REPL.

### Downloading Systems

In a REPL with Ocicl enabled, run

```sbcl
(asdf:load-system :commonlisp-template)
```

Now the directory [./systems/](./systems/) should exist and be filled with the downloaded dependencies.

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

### Generate the Executable

The generate the executable `commonlisp-template` call `asdf:make` in a REPL:

```lisp
(asdf:make :commonlisp-template)
```

or evaluate it on the command line, for example using SBCL:

```shell
sbcl --non-interactive --eval '(asdf:make :commonlisp-template)'
```

## License

This template is licensed under the MIT license, see file [./LICENSE](./LICENSE)
