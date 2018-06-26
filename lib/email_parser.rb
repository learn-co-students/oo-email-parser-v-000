require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  @@emails = []

  attr_accessor :email_array

  def initialize(string)
    @email_array = string.split(/,\s|\s/)
    #binding.pry
  end

  def parse
    @email_array.uniq
  end

end
