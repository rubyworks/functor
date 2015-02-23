require 'functor'

module Kernel

  # Like #respond_to? but returns the result of the call
  # if it does indeed respond.
  #
  #   class RespondExample
  #     def f; "f"; end
  #   end
  #
  #   x = RespondExample.new
  #   x.respond(:f)  #=> "f"
  #   x.respond(:g)  #=> nil
  #
  # or
  #
  #   x.respond.f   #=> "f"
  #   x.respond.g   #=> nil
  #
  # This method was known as #try until Rails defined #try
  # to be something more akin to #ergo.
  #
  # TODO: Not 100% sure `respond` is best name for HOM form.
  #
  # CREDIT: Trans, Chris Wanstrath
  #
  def respond(sym=nil, *args, &blk)
    if sym
      return nil unless respond_to?(sym)
      __send__(sym, *args, &blk)
    else
      ## Better definition?
      ##Functor.new do |op, *a, &b|
      ##  respond(op, *a, &b)
      ##end
      Functor.new(&method(:respond).to_proc)
    end
  end

end
