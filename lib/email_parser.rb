# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  # not sure about the above
  def initialize(emails_data)
    @emails_data = emails_data
  end

  def parse
    emails = @emails_data.split(/ |, /)
    unique_emails = []
    emails.each do |email|
      if unique_emails == [] || !unique_emails.include?(email)
        unique_emails << email
      end
    end
    unique_emails
  end
end
