require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser 
  attr_accessor :email_addresses 
  @@email_list = []

  def initialize(emails)
   @email_addresses = emails 
    @@email_list << self
    
  end
  # create instance method - parse - that returns an array
 
  def parse 
    
   # separate emails by comma and return an array
    # @@email_list or @email_addresses
    
      parse_email = @email_addresses.tr(',', ' ') #replace the commas in the string with spaces
   parse_email.split(" ").map(&:strip) # split emails by spaces
       #should return an array with emails split between spaces 
      
    
    
#     
  end
    # should take a string of emails, return an array of emails in correct format
   
  
  
  
end 

#parse = EmailParser.new(emails)