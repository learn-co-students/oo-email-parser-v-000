# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
require 'pry'
class EmailParser
  attr_accessor :email

@@emails = []

  def initialize(email)
    @email = email
  end

  def parse
    parsed_emails = []
    parsed_emails << @email.delete(",").split
    parsed_emails.flatten.uniq
  end
end



