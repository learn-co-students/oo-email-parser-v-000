# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def self.create_with_email
    parser = self.new
    parser.emails = emails
  end

  def parse
    array_of_emails = self.emails.split(/,\s|\s/)
    no_duplicates ||= []
    array_of_emails.each do |email_address|
      if no_duplicates.include?(email_address) == false
        no_duplicates << email_address
      end
    end
    no_duplicates
  end
end
