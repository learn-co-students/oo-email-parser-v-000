# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :list

  def initialize (list)
    @list = list
  end

  def parse
    ugly_array = @list.split
    email_array = ugly_array.collect { |email| email.delete "," }
    email_array.uniq
  end
end