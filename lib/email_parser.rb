class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_array = @emails.scan(/\S+.com/)
    email_array.uniq
  end


end
