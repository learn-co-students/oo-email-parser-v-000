class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    split_string = @emails.split(/\, |\s/)
    split_string = split_string.uniq
    split_string
  end
end
