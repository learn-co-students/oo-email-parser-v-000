# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
require 'pry'
class EmailParser
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def parse
    emails_arr = string.split(/[\s,]+/)
    # binding.pry
    emails_arr.uniq

  end


end

