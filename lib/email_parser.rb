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
    email_1 = []
    email_1 = @emails.split(/[,\s]/).reject{|i| i == ""}
    email_1.uniq
#binding.pry
  end

end
