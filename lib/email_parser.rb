# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails ,:email_parser
  @CSV
  def initialize(emails)
    @CSV = emails
  end
  def parse

    email_parser = @CSV.tr(","," ").split 
    email_parser.uniq
end
end
