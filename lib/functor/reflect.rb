require 'functor'

module ObjectSpace

  # Reflection ensures that information about an object
  # is actual according to Ruby's Kernel definitions, just
  # in case such methods have been overridden.
  #
  #  ObjectSpace.reflect("object").object_id
  #
  # There is also a global short-cut for this method to ease
  # meta-programming with it.
  #
  #   $ref["object"].class
  #
  # Typically theis method will be used to gather the object's
  # id, as in the example given, or it's class, but any Kernel
  # method can be used.
  #
  # Care should be taken in utilizing this technique. In most
  # cases it is not needed, but in certain cases is useful
  # for improving the robustness of meta-programming solutions.
  #
  # Note that this is also equivalent to using +as(Kernel)+ ...
  #
  #   "object".as(Kernel).object_id
  #
  # But obviously, in this case there is the risk that #as has
  # be overridden too.
  #
  def self.reflect(obj)
    Functor.new do |op, *a, &b|
      Kernel.instance_method(op).bind(obj).call(*a, &b)
    end
  end

end

# Shorcut for +ObjectSpace.reflect+.
#
#   $ref["object"].class
#
$ref = lambda do |obj|
  ObjectSpace.reflect(obj)
end

