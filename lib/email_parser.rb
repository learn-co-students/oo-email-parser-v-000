# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  @@all = []
  attr_accessor :email
  def initialize(email)
    #accepts a string of unformatted emails
    @email = email
  end
  def parse
    #binding.pry
    #rows = csv_data.split("\n")
    people = email.split(/[\,\s]+/)
    people.uniq#removes duplicates ref ruby-doc
    #binding.pry
  end
end
