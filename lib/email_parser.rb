# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :email


  def initialize(email)
    @email = email
  end

  def parse
    parsed_emails = email.split(/[,\s]/).reject(&:empty?).uniq
  end


end

# new_email = EmailParser.new("avi@test.com, arel@test.com")
# binding.pry
