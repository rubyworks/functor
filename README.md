# Functor

[Homepage](http://rubyworks.github.com/functor) |
[Source Code](http://github.com/rubyworks/functor) |
[Report an Issue](http://github.com/rubyworks/functor/issues)


## Synopsis

By definition a *Functor* is simply a first class method, but these are quite
common in Ruby with the `Method`, `UnboundMethod` and `Proc` classes. So for
Ruby we define a Functor as a *Higher Order Function*. Essentially, a functor
can vary its behavior according to the operation applied to it. Consider the
following simplistic example.

    f = Functor.new { |op, x| x.send(op, x) }

    f + 1  #=> 2
    f + 2  #=> 4
    f + 3  #=> 6
    f * 1  #=> 1
    f * 2  #=> 4
    f * 3  #=> 9

Notice that the constructor takes a block, the first argument of which is always
the method operating on the functor. All subsequent arguments are optional
dependent upon the use case.

We can also think of the Functor as an *anonymous/generic delegator*. Instead
of having to create a specialized delegator class, a functor can be used instead.
Functors are perfect when the delegation required is minimal.

**NOTE** Ruby functors are not the same thing a Haskell functors. In Ruby
Enumerators are most akin to Haskell's idea of a functor.


## Batteries Included

In addition to the Functor class, this library includes a dozen or so useful
core extensions that take advantage of the power of the functor. Have a look
at the demo directory for a rundown on the methods available and how they
work.


## Copyrights

Copyright (c) 2004 Rubyworks

Functor is distributable in accordance with the *BSD-2-Clause* license.

See LICENSE.txt for details.

