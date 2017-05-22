# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

# "avi@test.com, arel@test.com test@avi.com, test@arel.com"

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.scan(/\b(\S+)\b/).flatten.uniq
  end
  
end