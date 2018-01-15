require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#first method attempt
  #for each string in the array-- check if it already exists
  #if it doesn't already exist --
    #parse and seperate by a comma, or a whitespace
    #shovel into unique_emails array
  #end
  #return unique array

#second method attempt
  #convert string into an array, splitting by space or comma
  #shovel string.uniq into unique_emails array
  #return unique_emails
  #end
class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end



def parse
  unique_emails = []
  #unique_emails = @emails.split.collect{|x| x.split(",")}.flatten.uniq
  unique_emails = @emails.scan(/\w+@\w+.\w+\b/).uniq
  unique_emails
end







end
