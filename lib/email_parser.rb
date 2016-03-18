class EmailParser
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  
  
  def parse
    name.split.map do |names|
      names.split(',')
    end.flatten.uniq
  end
  
  
  
end