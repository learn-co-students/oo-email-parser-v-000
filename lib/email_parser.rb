# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#create a EmailParser class
#create an instance method - parse
#delete duplicate emails (detect, sortby?...)
#
class EmailParser
  attr_accessor :emails
  @@all = []

def initialize(emails)
  @emails = emails
  @@all << self
end

def self.all
  @@all?
end

def parse(emails)
  #instance method. takes in the argument (the string of emails)
  emails.split(/\b/)
  #returns the new array so you dont need to explicitly tell it to do so here
end

end
