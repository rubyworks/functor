require 'functor'

module Enumerable

  # Higher-order form of #select.
  #
  #   [1, 2, 3].where > 2  #=> [3]
  #
  def where
    Functor.new do |op, *a, &b|
      select{ |e| e.public_send(op, *a, &b) }
    end
  end

end
