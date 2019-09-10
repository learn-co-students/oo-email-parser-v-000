require'pry'

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_reader :all
  def initialize(emails)
    @all = emails
  end 
  
  def parse 
    #binding.pry
    @all.scan(/\w+[@]\w+[.]\w+/).uniq
  end 
  
end 