require 'functor'

class Enumerator

  # Functorize Enumerator#map. This is the most like Haskell's idea of a Functor.
  #
  def fx
    Functor.new do |op, *a, &b|
      map{ |e| e.send(op, *a, &b) }
    end
  end

end

