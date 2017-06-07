class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.scan(/\w+@\w+\.com/).uniq
  end
end
