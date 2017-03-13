# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    clean_emails = []
    array = emails.split(/[,]+\s|\s/)  # removes comma[,] + whitespace(\s) or(|) whitespace(\s)
    array.map do |email|
      clean_emails << email  # shovel emails into empty array
    end
    clean_emails.uniq  # returns only unique emails, no duplicates
    #binding.pry
  end
end

#parser = EmailParser.new("avi@test.com, arel@test.com")
#parser = EmailParser.new("avi@test.com arel@test.com")
#parser = EmailParser.new("avi@test.com, arel@test.com test@avi.com, test@arel.com")
parser = EmailParser.new("avi@test.com, avi@test.com")

parser.parse
