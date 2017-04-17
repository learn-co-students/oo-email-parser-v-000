# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :emails
  @@all = []

  # #will add all instances of self to the @@all class varible.
  # def add
  #   @@all << self
  # end
  # #initialize with a list of emails separated with commas or spaces
  # def self.create(emails)
  #   emails = self.new
  #   emails.save
  #   emails
  # end

  def initialize(emails)
    @emails = emails
    @@all << self
  end


  def parse
    # binding.pry
    list = @emails.split(/\, |\s/) #uses regex patterns of commas and spaces
    list.uniq #only returns unique values

  end
end

#emails = ''"hello@me.com", "you@why.com"
