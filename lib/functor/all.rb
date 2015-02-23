require 'functor'

module Enumerable

  # Like `#all?` but higher-order.
  #
  #   [1,2,3,4].all > 2  #=> false
  #
  def all
    Functor.new do |op, *a, &b|
      all?{ |e| e.public_send(op, *a, &b) }
    end
  end

end
