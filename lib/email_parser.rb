class EmailParser 
  attr_accessor :emails
  
  def initialize(emails) 
    @emails = emails 
  end 

  def parse
    email = @emails.split(" ").map {|s| s.gsub(",","") }
    email.uniq
  end 
end 