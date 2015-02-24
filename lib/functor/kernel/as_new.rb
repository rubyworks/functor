require 'functor'

module Kernel

  # Take an object as the initializing argument of a given class
  # and return a Functor instance ready to act on this new object.
  # 
  #   [1,2,3].every.as_new(Array).to_a 
  #   #=> [ [nil], [nil, nil], [nil, nil, nil] ]
  #
  def as_new(klass)
    s = self
    Functor.new do |op, *a, &b|
      klass.new(s).public_send(op, *a, &b)
    end
  end

end

