require 'functor'

module Kernel

  # Returns an As-functor that allows one to call any
  # ancestor method directly on the given object.
  #
  #   class AsExample1
  #     def x ; 1 ; end
  #   end
  #
  #   class AsExample2 < AsExample1
  #     def x ; 2 ; end
  #   end
  #
  #   class AsExample3 < AsExample2
  #     def x ; as(AsExample1).x ; end
  #   end
  #
  #   AsExample1.new.x  #=> 1
  #
  def as(ancestor, &blk)
    s = self
    r = Functor.new do |op, *a, &b|
      ancestor.instance_method(op).bind(self).call(*a, &b)
    end
    # TODO: Not 100% certain about how best to use #as block, if at all.
    r.instance_eval(&blk) if block_given? #yield(r) if block_given?
    return r
  end

end
