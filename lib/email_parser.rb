# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    self.emails.split(/[\s,]/).uniq.reject{|string| string.empty?}
  end
end

emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
EmailParser.new(emails).parse
