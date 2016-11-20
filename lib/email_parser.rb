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
    email_array = @emails.split(" ")
    email_array.collect do |email|
      email.slice!(-1) if email.end_with?(",")
    end
    email_array.uniq!
    email_array
  end
end
