require 'functor'

module Enumerable

  # An higher order method akin to `#inject`.
  #
  #   [1,2,3].accrue.+  #=> 6
  #
  def accrue
    Functor.new do |op, *a, &b|
      inject do |c, e|
        c.public_send(op, e, *a, &b)
      end
    end
  end

end
