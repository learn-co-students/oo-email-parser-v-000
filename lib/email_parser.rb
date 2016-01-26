# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
require 'pry'
class EmailParser

attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end
  
  def parse
    parsed_array = []
    email = emails.split(/[\, ]+[\s]*/).each {|email| parsed_array << email if !parsed_array.include?(email)}
    #binding.pry
    parsed_array
  end

end
