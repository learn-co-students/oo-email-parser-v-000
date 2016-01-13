#test
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails_parsed = emails.scan(/\w+@\w+\.com/).uniq
    @emails_parsed
  end

end
