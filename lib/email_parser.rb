# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :csv_file

  def initialize(csv_file)
    @csv_file = csv_file
    self.parse
  end

  def parse
    parse_array = self.csv_file.split(/\,+\s|\s/).uniq
    parse_array
  end

end

#
# emails = "john@doe.com, person@somewhere.org"
# parser = EmailParser.new(emails)
#
# parser.parse
# => ["john@doe.com", "person@somewhere.org"]

# 1. How will you control for parsing a list of emails that is either comma separated or separated by a white space.
# 2. Use an attr_accessor to set and get the list of emails
