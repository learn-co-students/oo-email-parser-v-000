  require 'pry'

class EmailParser

  attr_accessor :email

  def initialize (emails)
    binding.pry
    @email = emails.split(",")
  end

  def parse
    binding.pry
    @email.collect!{|obj|obj.strip}
  end

end
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
