# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails

  def initialize(email_string)
    self.emails = email_string
  end

  def parse
    parsed_emails = self.emails.split(" ")
    #remove trailing commas from parsed_emails
    parsed_emails.each do |email|
      if email.end_with?(",")
        email.delete!(",")
      end
    end
    #remove duplicates from parsed_emails
    if parsed_emails.uniq == nil
      parsed_emails
    else
      parsed_emails.uniq
    end
  end

end
