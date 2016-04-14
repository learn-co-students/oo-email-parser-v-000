class EmailParser
  attr_accessor :email
  
  def initialize(emails)
    @email = emails
  end
  
  def parse
    email_array = email.split(/\b[, ]+/).uniq
  end
  
end
