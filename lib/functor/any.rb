require 'functor'

module Enumerable

  # Like `#any?` but higher-order.
  #
  #   [1,2,3,4].any > 2  #=> true
  #
  def any
    Functor.new do |op, *a, &b|
      any?{ |e| e.public_send(op, *a, &b) }
    end
  end

end
