class EmailParser
  attr_accessor :emails

  def initialize(str)
    @emails = str
  end

  def parse
    address_list = @emails.split(/,*\s+/)
    address_list.uniq
  end
end
