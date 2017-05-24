class EmailParser
  attr_accessor :addresses

  def initialize(list)
    @addresses = list
  end

  def parse
    emails = @addresses.scan(/[a-z]+@[a-z]*.com/).uniq
  end

end
