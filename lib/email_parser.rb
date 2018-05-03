# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :email
  
  def initialize(data)
    @email = data
  end
  
  
  def parse
    all = []
    array = @email.split(/[\s,]/).reject(&:empty?)
    array.each {|e| all << e}
    all.uniq
  end
  
end 
