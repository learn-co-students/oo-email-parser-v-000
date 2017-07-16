# Build a class EmailParser that accepts a string of unformatted 
# emails. 
#The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
     attr_accessor :emails
  
     require 'pry'
     def initialize(list)
          @emails = list.split(" ")
          @emails.map! {|e| e.tr(',','')}
     end
     
     
     def parse
          return @emails.uniq
     end
     
end