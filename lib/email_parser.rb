class EmailParser
  
  attr_accessor :emails

  def initialize(emails)
    @emails = emails.split(/,\s|[\s]/)
  end

  def parse
    parsed_emails = []
    @emails.each { |email| parsed_emails << email if !parsed_emails.index(email) }
    parsed_emails
  end

end
