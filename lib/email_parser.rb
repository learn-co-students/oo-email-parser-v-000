# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  @@all = []
  attr_accessor :email
  def initialize(name)
    @name = name
  end
  def parse
    #binding.pry
    #rows = csv_data.split("\n")
    people = email.collect do |row|
      data = email.split(",")
      email = data[0]
      person = self.new
      person.email = email
      person
                        end
    people
    binding.pry
    end
end
