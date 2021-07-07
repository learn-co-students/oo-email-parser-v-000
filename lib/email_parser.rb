# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_reader :emails
  
  def initialize(emails)
    @@emails = emails
  end

  def parse
    split_emails = @@emails.gsub(" ",",").split(",")
    split_emails.delete("")
    split_emails.uniq
    # emails.split.map do |email|
    # email.split(',')
    # end.flatten.uniq
  end
  
end