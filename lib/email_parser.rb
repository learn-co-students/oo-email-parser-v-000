# email_parser.rb
# Build a class EmailParser that accepts string of unformatted emails
class EmailParser
  #attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end
# #parse on the class should separate unformatted emails into unique email addresses
#  Delimiters to support are commas (',') or whitespace (' ')
  def parse
    # emails = email_parser.scan(/\w+@\w+.\w+/).uniq
    @emails.scan(/\w+@\w+.\w+/).uniq
  end
end
