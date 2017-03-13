# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :array_string

  def initialize(array_string)
    @array_string = array_string
  end



  def parse
  @array_string.split(/,?\s/).uniq
  end

end
