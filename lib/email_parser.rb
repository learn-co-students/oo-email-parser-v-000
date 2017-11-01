# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails, :parsed_emails

  def initialize(emails)
    @emails = emails
    @parsed_emails = []
  end

  def parse
    split_emails = @emails.split(/,?\s+/)
    split_emails.each do |email|
      if !parsed_emails.include?(email)
        parsed_emails << email
      end
    end
    parsed_emails
  end


end
