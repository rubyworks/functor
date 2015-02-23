class Functor

  #
  def self.index
    @index ||= (
      require 'yaml'
      YAML.load_file(File.dirname(__FILE__) + '/functor.yml')
    )
  end

  #
  def self.const_missing(const_name)
    name = const_name.to_s.downcase
    index.key?(name) ? index[name] : super(const_name)
  end

end
