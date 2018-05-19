class EmailParser  
  attr_accessor :emails 
  
  def initialize(emails)
    @emails = emails 
  end 
  
  
  def parse 
  email_array = ["avi@test.com", "arel@test.com"]
  email_array = @emails.split(/[,\s]/)
  email_array = email_array.reject{ |e| e == ""}
  email_array = email_array.uniq 
   
  end 
  
  
 
  
end 
 
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

