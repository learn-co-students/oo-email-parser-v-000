# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require'pry'

class EmailParser

  attr_accessor :emails

  def initialize(string)
    @emails = string
  end
  
  def parse
    email_array = @emails.split(/[, \s ]/).reject { |e| e.empty? }
    email_array.uniq{|e|e}
  end

end
