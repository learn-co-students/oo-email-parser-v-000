class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_list = @emails.scan(/\w+@\w+\.com/).uniq
    email_list
  end

end