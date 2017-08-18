class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    parsed_emails = @emails.split(/[\s,]+/).uniq
    parsed_emails
  end
end
