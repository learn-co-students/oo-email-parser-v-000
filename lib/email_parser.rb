# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  @@all = []

  attr_accessor :list

  def initialize(input)
    @list = input
  end

  def parse
    parsed = self.list
    parsed = parsed.gsub(/,/, '')
    parsed.split(" ").uniq
  end

end
