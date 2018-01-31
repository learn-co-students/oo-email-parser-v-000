# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :parse
  attr_reader :list
  
  def initialize(list)
    @list = list
  end
  
  def parse
    #if list.include?(", ") && !list.include?(" ")
     # return list.split(", ").compact
    #elsif list.include?(", ") && !list.include?(" ")
     # return list.split(" ").compact
    #end
    list.split(/\,+\s|\s/).uniq
  end
end