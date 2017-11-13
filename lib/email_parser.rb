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
    separated_string = @email.delete(',')
    new_email = separated_string.split(' ')
    new_email.uniq
  end
end
