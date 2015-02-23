require 'functor'

module Enumerable

  # Doubly higher-order form of `#select`, where the the first
  # call isolates an attribute of each element and the second
  # then handles the selection criteria.
  #
  #   [1, 2, 3].having.age > 2  #=> [3]
  #
  def having
    Functor.new do |op1, *a1, &b1|
      Functor.new do |op2, *a2, &b2
        select{ |e| e.public_send(op1, *a1, &b1).public_send(op2, *a2, &b2) }
      end
    end
  end

end
