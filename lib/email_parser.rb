class EmailParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end

  def parse
    emails = @emails.split(/,*\s+/)
    emails.uniq
  end
  
end
