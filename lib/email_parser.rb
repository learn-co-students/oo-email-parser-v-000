# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
# EmailPareser.new(cboujoukos@gmail.com, john@doe.com).parse
# => ["cboujoukos@gmail.com", "john@doe.com"]
class EmailParser
  attr_accessor :email
  @@email_addresses = []

  def initialize(emails)
    @emails = emails
  end

  def parse
    sorted_emails = @emails.split(/[,\s]+/)
    sorted_emails.uniq
  end

end
