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
    empty = []
    split_email = @emails.split(/\s/)
    split_email.each do |stuff|
      empty << stuff.chomp(",")
    end
    empty.uniq
  end
end
