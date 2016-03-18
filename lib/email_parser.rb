class EmailParser
  attr_accessor :name

  def initialize(name)
    @name = name
  end



  def parse
    name.split.map do |namess|
      namess.split(',')
    end.flatten.uniq
  end



end