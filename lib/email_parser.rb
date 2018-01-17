# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor  :emails
  def initialize(emails)
    @email = emails
  end

  def parse
    parsed_email  =   @email.split(/[, ]/)
    parsed_email_uniq = parsed_email.uniq
    parsed_email_clean = parsed_email_uniq.delete_if {|element| element == ""}

  end
end
emails = "aa.aa@com, bb.vvvv.@com  cc.@com, aa.aa@com, bb.vvvv.@com  cc.@com"
parser = EmailParser.new(emails)
parser.parse
