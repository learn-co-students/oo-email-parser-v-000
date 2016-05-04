# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').\
require 'pry'
class EmailParser

attr_accessor :emails

def initialize(emails)
  @emails = emails
end

def parse
  unique_emails = []
   emails.split(/[\s,]/).each {|email| unique_emails << email.strip} 
  unique_emails.uniq.reject {|e| e.empty? }
end




end