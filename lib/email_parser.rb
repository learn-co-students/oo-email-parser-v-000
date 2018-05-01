# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser 
  attr_accessor :emails
  
  def initialize(list)
    @emails = list 
  end
  
  def parse
    #if @emails.include?(',')
    email_list = @emails.split(', ')
    #else
    email_list_wo_spaces = email_list.collect{|email| email.split(' ')}
    email_list_wo_spaces.flatten!
    #end
    email_list_wo_spaces.uniq
  end
  
end

testing = EmailParser.new('avi@test.com arel@test.com')
testing.parse 