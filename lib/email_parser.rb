class EmailParser
  attr_accessor :parse

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.delete(",").split(" ").uniq
  end
end
