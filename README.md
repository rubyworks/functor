# Functor

[Homepage](http://rubyworks.github.com/functor) |
[Source Code](http://github.com/rubyworks/functor) |
[Report an Issue](http://github.com/rubyworks/functor/issues)


## Synopsis

By definition a Functor is simply a first class method, but these are common
in the form of Method and Proc. So for Ruby a Functor is a more specialized
as a Higher-order function or Metafunction. Essentally, a Functor can vary
its behavior accorrding to the operation applied to it.

    f = Functor.new { |op, x| x.send(op, x) }

    (f + 1)  #=> 2
    (f + 2)  #=> 4
    (f + 3)  #=> 6
    (f * 1)  #=> 1
    (f * 2)  #=> 4
    (f * 3)  #=> 9


## Copyrights

Copyright (c) 2004 Rubyworks

Functor is distributable in accordance with the *BSD-2-Clause* license.

See LICENSE.txt for details.

