# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
#require 'pry'

class EmailParser

  attr_accessor :emails
  @emails = ""
  @email_array = []

  def initialize(emails)
    @emails = emails
    self.parse
  end

  def parse
     @email_array = @emails.split(/[\s,]+/)
    #split based on mathcing any character in the set
    #whitespace or comma, match one or more of the preceding token
    @email_array.uniq!
    @email_array
  end

end
