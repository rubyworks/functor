require 'functor'

module Enumerable

  # Per element meta-HOM.
  #
  #   ([1,2,3].per(:map) + 3)     #=> [4,5,6]
  #   ([1,2,3].per(:select) > 1)  #=> [2,3]
  #
  # Using fluid notation.
  #
  #   ([1,2,3].per.map + 3)       #=> [4,5,6]
  #   ([1,2,3].per.select > 1)    #=> [2,3]
  #
  def per(enum_method=nil, *enum_args)
    if enum_method
      Functor.new do |op, *args, &blk|
        __send__(enum_method, *enum_args){ |x| x.__send__(op, *args, &blk) }
      end
    else
      Functor.new do |enumr_method, *enumr_args|
        Functor.new do |op, *args, &blk|
          __send__(enumr_method, *enumr_args){ |x| x.__send__(op, *args, &blk) }
        end
      end
    end
  end

end
