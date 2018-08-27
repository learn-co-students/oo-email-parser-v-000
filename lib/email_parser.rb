# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :parse
  @@emails=[]
  def initialize(estring)
    @@emails=estring.split(/[, ]/)
    @@emails.delete_if{|x|x==''}
  end 
  def parse
    x=[]
    @@emails.each{|y|
      if x.include?(y)==FALSE
        x << y 
      end}
    x
  end
end