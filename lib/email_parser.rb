# email_parser.rb
# Build a class EmailParser that accepts string of unformatted emails
class EmailParser
  attr_accessor :email, :email_parser

  def initialize(email_file)
    @email_parser = email_file
  end
# #parse on the class should separate unformatted emails into unique email addresses
#  Delimiters to support are commas (',') or whitespace (' ')
  def parse
    @email_parser = email_parser.scan(/\w+@\w+.\w+/)
    @email_parser.uniq
  end

end
