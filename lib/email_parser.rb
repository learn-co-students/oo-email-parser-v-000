# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser

  attr_accessor :emails_string, :parsed_emails

  def initialize(emails)
    @emails_string = emails
  end

  def parse
    @parsed_emails = @emails_string.split(/,*\s/)
    @parsed_emails.uniq
  end

end
