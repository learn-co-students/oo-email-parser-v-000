# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "pry"

class EmailParser


attr_accessor :emails

  def initialize(emails) 
    @emails = emails
  end 
  
  
  
  def parse
    x = @emails.delete ","
    x = x.split(" ")
    x = x.uniq

  end 
  
end 