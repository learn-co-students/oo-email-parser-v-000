# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :emails
   
  def initialize(emails)
     @emails = emails 
     
    def parse
    email_array = @emails.split(/[, ]/).uniq 
    email_array.reject! { |element| element.empty? }
    email_array 
    
    #emails.split.map do |email|
    #end 
    #emails.split(, ")
     #end 
    end 
   
    
 end 
  
end 