require 'functor'

class String

  # Like `#newlines` but returns a Functor instead.
  #
  #   "a \n b \n c".linear.strip   #=> "a\nb\nc"
  #
  def linear
    Functor.new do |op, *a, &b|
      lines.map { |line|
        line.chomp.public_send(op, *a, &b)
      }.join("\n")
    end
  end

end
