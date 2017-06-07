# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

  attr_accessor :list

  def initialize(emails)           #takes the string
    @list = emails                 #set string as instance variable
  end

  def parse
    @list.split.collect do |email| #splits string on spaces and puts into array
      email.gsub(",","")           #for each value in array, replace comma with ""
   end.uniq                        #return unique items in array created by split 
  end

end
