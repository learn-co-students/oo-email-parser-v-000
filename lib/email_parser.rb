class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

def parse
  unique_emails = []
  unique_emails = @emails.scan(/\w+@\w+.\w+\b/).uniq
  unique_emails
end

end
