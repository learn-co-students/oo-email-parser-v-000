# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    parsed_emails = emails.split(/\s|[,]/)
    parsed_emails.delete("")
    parsed_emails.uniq!
    parsed_emails
  end

end