class EmailParser 
  attr_accessor :email_string 
  
  def initialize(email_string)
    @email_string = email_string
  end
  
  def parse 
    self.email_string.split(/[, ]/).reject(&:empty?).uniq
  end
    
    
    
    



end