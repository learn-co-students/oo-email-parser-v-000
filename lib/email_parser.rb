# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :emails

  # @@emailsarray = []

  def initialize(emails)
    @emails = emails
  end

  def parse
    emailsarray = self.emails.split(/[\s,]+/).uniq
  end
end


#Creating New Email Parser
#EmailParser.new(emails)
