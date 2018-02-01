class EmailParser

  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def parse
    spl = @list.gsub(/,/, '').split(" ")
    spl.uniq
  end
end
