# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :emails

  def initialize(emails) # "avi@test.com, arel@test.com"
    @emails = emails
  end

# takes a string of emails, splits them into arrays by 
# matching comma (,) with zero or more of those instances and then any whitespaces.

  def parse
    @emails.split(/,?\s/).uniq
  end

end
