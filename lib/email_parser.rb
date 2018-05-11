# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
#Use an attr_accessor to set and get the list of emails
attr_accessor :emails

def initialize (emails)
  @emails = emails
end


def parse
  binding.pry
  #go through the array and split up the emails.
  #collect all of the emails then seperate with " "
  emails.split.collect do |address|
    address.split(',')

  #removes duplicate emails
end.flatten.uniq
end
end

#control for parsing a list of emails that is
#either comma separated or separated by a white space.

#initialize a list of emails either seperated with spaces
#seperated with commas
