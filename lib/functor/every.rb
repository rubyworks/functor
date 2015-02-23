require 'functor'

module Enumerable

  # Higher-order form of `#map`.
  #
  #   [1,2,3].every + 1  #=> [2,3,4]
  #
  def every
    Functor.new do |op, *a, &b|
      map do |e|
        e.public_send(op, *a, &b)
      end
    end
  end

end
