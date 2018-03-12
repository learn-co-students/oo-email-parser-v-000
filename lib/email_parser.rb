# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :parse
  @@arr = []

  def self.all
    @@arr
  end #def self.all

  def self.new(list)
    parser = self.new
    list.parse = list


  end #def self.new

  def self.parse
    
    parser = list.split(/[, ]/)
  end #def parse

end #def class EmailParser
#split into array
#remove duplicates .uniq

#get string of emails as argument
