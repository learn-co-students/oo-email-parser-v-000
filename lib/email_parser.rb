# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_list = self.emails.split(/,\s|\s+/).uniq
  end
end


# emails = "john@doe.com, person@somewhere.org"
# parser = EmailParser.new(emails)

# parser.parse
# => ["john@doe.com", "person@somewhere.org"]
