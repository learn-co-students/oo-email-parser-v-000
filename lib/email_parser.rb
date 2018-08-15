
class EmailParser
  attr_accessor :emails
  
 
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    email_list = []
    split_emails = emails.split(/[\s,]+/).uniq
    
    split_emails.map do |x| 
      email_list << x
        end
     email_list
    end
end


