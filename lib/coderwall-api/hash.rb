class Coderwall::Hash < ::Hash
  
  def initialize(hash = {})
    hash.keys.each do |key|
      value = hash[key]
      value = Coderwall::Hash.new(value) if value.is_a?(::Hash)
      self[key.to_sym] = value
    end
  end
  
  def method_missing(method_name, *args)
    if key?(method_name.to_sym)
      self[method_name.to_sym]
    else
      super
    end
  end
  
end