# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
  
require 'pry'
  
class EmailParser
  
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails  
  end
  
  def parse
    new_emails = @emails.split().collect {|e| e.strip.delete(",")}
    new_emails
  end
  
  
  
  
end