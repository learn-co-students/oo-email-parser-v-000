# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  @@all = []
  attr_accessor :emails

  def initialize(str)
    @emails = str
  end

  def parse
    emails_array = emails.split(/[\s,]+/)
    emails = {}
    emails_array.each do |email|
      emails[email] ? emails[email] += 1 : emails[email] = 1
    end
    emails.keys
  end
end
