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
  unique_emails = @emails.scan(/\w+@\w+.\w+\b/).uniq
  # my solution 2 unique_emails = @emails.split.collect{|x| x.split(",")}.flatten.uniq
  #avi's
=begin
emails.split.map do |email|
    email.split(',')
  end.flatten.uniq
=end
  unique_emails
end


#notes on solution and parsing in general
#don't overwhelm yourself with parsing by considering all possible ways to parse
#select a strategy and focus on that strategy (and appropriate enumberable)
#to find the appropriate enumberable, consider inputs and outputs
#here we needed an enumerable that returned an array
#some possible regex/enumerable patterns

#grep(regexp) => array
#grep searches arrays and hashes and returns an array of all the items in the string that match
#grep(regexp){|obj| block} => array
#collect {|obj| block (maybe split by regexp pattern)}






end
