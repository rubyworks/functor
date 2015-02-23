require 'functor'

module Enumerable

  # Put in order based on returned value of higher-order message.
  #
  #    a = ["hello", "hi", "sure"]
  #    a.in_order_of.size  
  #    #=> ["hi", "sure", "hello"]
  #
  def in_order_of
    Functor.new do |op, *a, &b|
      sort_by(op, *a, &b) 
    end
  end

end
