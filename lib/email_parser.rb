# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  
  attr_accessor :email
  
  
  def initialize(emails)
    @email = emails 
  end 
  
  def parse 
    new_parse = @email.split(/[\s,]+/)
    final_parse = new_parse.uniq 
    final_parse
  end 
end 