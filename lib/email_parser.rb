class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    split_emails = self.emails.split(/\,|\s/)
    split_emails.delete("")
    split_emails.uniq
  end
end
