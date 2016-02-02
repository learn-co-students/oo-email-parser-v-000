# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser

  attr_accessor :emails

  def initialize(raw_emails)
    @emails = raw_emails
  end

  def parse
    email_array = self.emails.split(" ")
    parsed_emails = []
    email_array.each do |email|
      if email[-1] == ","
        parsed_emails << email[0..-2]
      else
        parsed_emails << email
      end
    end
    parsed_emails.uniq
  end

end