require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
binding.pry 
class EmailParser 
  attr_accessor :email_address 
  @@email_list = []

  def initialize(emails)
    @@email_list << self 
  end
  # create instance method - parse - that returns an array
  def self.parse(emails)
    binding.pry
    # should take a string of emails, return an array of emails in correct format
    email = self.new 
    email.email_address = emails
    emails.split(" , ")
  end 
  
  
  
  
  
end 
