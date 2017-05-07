class EmailParser

  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def parse
    final = @list.split(/\.\s|\,/).collect{|item| item.split(" ")}.flatten
    final & final
  end

end
