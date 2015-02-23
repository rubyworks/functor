require 'functor'

module Kernel

  # Inversion functor.
  #
  #   true.not.nil?  #=> true
  #
  def not
    Functor.new do |op, *a, &b|
      !__send__(op, *a, &b)
    end
  end

  # Same as using NOT operator '!'.
  #
  #  true.nil?.not? == !true.nil?
  #
  def not?
    !self
  end

end

