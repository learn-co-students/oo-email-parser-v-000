# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

# regex = /,\s|\s/

class EmailParser
  attr_accessor :list

  def initialize(emails)
    @list = emails
  end

  def parse
    self.list.split(/,\s|\s/).uniq
  end
end
 
