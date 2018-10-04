require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  
attr_accessor :string_with_emails

  def initialize(emails)
    @string_with_emails = emails 
  end

  def parse
    @string_with_emails.split(/,?\s/).uniq 
   
  end 

end 