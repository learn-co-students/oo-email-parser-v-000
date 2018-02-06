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
    array_email = emails.split(/[\s,]/)
    array_email.delete("")
    array_email.uniq
  end
end
