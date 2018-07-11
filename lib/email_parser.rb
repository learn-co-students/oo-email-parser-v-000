# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#create a EmailParser class
#create an instance method - parse
# an INSTANCE METHOD calls on a SPECIFIC INSTANCE of that class! not the enitre class...
#delete duplicate emails (detect, sortby?...)

require 'pry'

class EmailParser
  attr_accessor :emails
#  @emails = []

  def initialize(emails)
    @emails = emails
  end

  def parse
    #cannot iterate through string - need to do so through an array!
    parsed_emails = []
    parsed_emails = @emails.split(/[,\s]+/).uniq
  end
  end
