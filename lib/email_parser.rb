# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser

attr_accessor :emails
  def initialize(email)
    @emails = email
  end
  
  def parse
    #if @emails.include?(",") == true
    #  @emails.split(",").collect(&:lstrip) 
    #elsif @emails.include?(" ") == true
    #  @emails.split(" ").collect(&:lstrip)
    #else
     # @emails.split(/[\s,]/).collect(&:lstrip) 
    #end
    parsed = @emails.split(/[\s,]+/).uniq
   
  end

end