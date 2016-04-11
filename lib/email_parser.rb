# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser

  #@@emails = []

  attr_accessor = :email_addr

  def initialize(email)
    @email_addr = email
  end

  def parse
    p_email = @email_addr.scan(/\b\w+@\w+.\w+\b/i).uniq
    #binding.pry
  end
end