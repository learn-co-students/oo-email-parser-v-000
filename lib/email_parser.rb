class EmailParser

  def initialize(emails)
    @emails = emails
  end

  def parse
    parsed_emails = @emails.split(/[^@.\w-]+/).uniq
  end
end
