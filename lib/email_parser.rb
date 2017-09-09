# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  def initialize(list)
    @list = list
  end

  def parse
      array_without_whitespace = []
      new_array = @list.split(/,\s/).uniq
      new_array.each do |email|
        array_without_whitespace << email.split(" ")
      end
      array_without_whitespace = array_without_whitespace.flatten
  end

end
