# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
 # binding.pry


class EmailParser
  attr_accessor :email_address
  
  def initialize(emails)
    @email_address = emails
  end
  
  
  def parse(emails)
    @email_address = emails.split(/[,\s*]/)
    @email_address = @email_address.compact.reject { |h| h == "" }
  end

end