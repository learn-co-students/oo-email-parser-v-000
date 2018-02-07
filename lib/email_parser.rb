class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse(emails)
    split_email = emails.split(/ |, |, /)
    split_email.uniq
  end
end
