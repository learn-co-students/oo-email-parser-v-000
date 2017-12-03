# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser

  attr_accessor :set_email, :get_email

  def initialize(string)
    @string = string

  end

  def parse

    string_array = @string.split(/[,]| | /).select {|t| t.length > 3}
    string_array = string_array.uniq

    #binding.pry

  end

end
