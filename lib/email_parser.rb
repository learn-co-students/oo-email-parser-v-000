class EmailParser
  attr_accessor :parse

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_arr = @emails.delete(",").split(" ")
    email_arr.uniq
  end
end
