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
    emails_string = emails
    new_emails = emails_string.split(' ').collect do |email|
      email.gsub(",", "")
    end
    new_emails = new_emails.uniq
  end
end
