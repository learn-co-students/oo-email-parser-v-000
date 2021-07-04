# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(string)
    @emails = string
  end
  
  def parse
    array = @emails.split(/[,\s]/)
    array.delete_if { |n| n.length < 2 }
    array.uniq
  end


end
# list = "john@john.com, bob@bob.com"
# binding.pry