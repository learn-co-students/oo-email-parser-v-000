# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :raw_emails

  def initialize(raw_emails)
    @raw_emails = raw_emails
  end

  def parse
    arr = raw_emails.split(/\s|,/)
    arr.delete("")
    arr.uniq
    # use .uniq
  end

end
