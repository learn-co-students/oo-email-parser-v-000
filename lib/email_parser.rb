require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser 
  attr_accessor :email_address 
  @@email_list = []

  def initialize(emails)
   @email_address = emails 
    @@email_list << self
    
  end
  # create instance method - parse - that returns an array
  def all 
    @@email_list 
  end
  
  def parse 
    binding.pry
   # separate emails by comma and return an array
  
   @@email_list.detect { |email_check| email_check.split(",")}
    
    # should take a string of emails, return an array of emails in correct format
   
  end
  
  
end 

#parse = EmailParser.new(emails)