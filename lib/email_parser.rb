# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
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
    # This method should accept a list of emails, and then split
    # emails whether they  delineated with " - " or
    # whitespace.
    split_email_array = emails.split(/[\s,]+/)
    split_email_array.uniq

  end
end
