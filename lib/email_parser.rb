# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

  attr_accessor :parse

  def initialize(email)
    @email = email
  end

  def parse
    #Steps below
    #1. Turn the @email string into an array
    #2. map throug the array and spit it by the ,
    #3. Flatten the return array to make the multipe arrays into one array
    #4. Have array only return unique values
    @email.split.map { |email| email.split(",") }.flatten.uniq
  end

end
