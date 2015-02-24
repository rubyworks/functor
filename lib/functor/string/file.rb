require 'functor'

class String

  # Use fluent notation for calling File functions.
  #
  # For instance, if we had a file 'foo.txt',
  #
  #    'foo.txt'.file.mtime
  # 
  def file
    fn = self
    Functor.new do |op, *a, &b|
      File.send(op, fn, *a, &b)
    end
  end

end

