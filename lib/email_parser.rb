require 'pry'
class EmailParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
 
  def parse
    emails = @emails.delete(",")
    email_array = emails.split
    new_email_array = email_array.uniq
    new_email_array
  end
end




# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
