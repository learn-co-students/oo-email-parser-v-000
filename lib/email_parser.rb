class EmailParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails 
  end
  
  def parse
    email_array = @emails.split(/[,\s]+/).uniq
  end
end