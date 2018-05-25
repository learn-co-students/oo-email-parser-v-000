
class EmailParser
  attr_accessor = :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    p_array = @emails.split(/[,|\s]/).uniq.delete_if {|email| email.length < 1 } 
    p_array
  end 

end 