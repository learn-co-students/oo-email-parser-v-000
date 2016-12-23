# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  def initialize(string)
    @string = string
  end

  def parse
  @string = @string.split(',').join.split(' ').uniq
  end

end
