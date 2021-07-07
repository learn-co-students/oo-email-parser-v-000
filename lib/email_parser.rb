# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :list
  
  def initialize(string)
    @list = string
  end
  
  def parse
    @list.gsub(", ", " ").split(" ").uniq
  end
  
end