### 3.2.0

* Improve parsing errors by adding locations (@gasche, #47)
* Add `render_buf` to render templates directly to buffers (@gasche, #48)
* When a lookup fails in the current context, lookup in parents contexts.
  This should fix errors when using "{{#foo}}" for a scalar variable
  'foo' to check that the variable exists.
  (@gasche, #49)

### 3.1.0

* Install `mustache` command line utility (@avsm, @anton-trunov)
* Update opam metadata to 2.0 format (@avsm)
* Port build to Dune (@avsm)
* Fix ocamldoc syntax to be compatible with odoc (@avsm)
* Test OCaml 4.06 and 4.07 as well (@avsm)

### 3.0.2 (08-05-2017)

* Add .descr file to repository

### 3.0.1 (06-09-2017)

* Switch to jbuilder (#30)

### 3.0.0

* Proper handling of partials (#28)
* Handle standalone elements (#27)
* Support for dotted names (#26)
* Switch parser to menhir (#24)
* keep track of locations in AST (#21)
