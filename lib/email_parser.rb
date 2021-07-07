# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser 
  
  attr_accessor :emails
  
  def initialize(emails) 
    @emails = emails
  end 
  
  def parse 
    
    arr1 = []
    arr2 = []
    
    arr1 = @emails.delete","
    arr2 = arr1.split(" ")
    
    parsed_arr = []
    parsed_arr = arr2.uniq
    
  end 
end 