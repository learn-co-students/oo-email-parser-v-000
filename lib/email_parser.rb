class EmailParser

  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.split(/[^@.\w-]+/).uniq
  end
end
