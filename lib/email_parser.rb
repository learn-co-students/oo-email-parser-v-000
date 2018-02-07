class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse()
    split_email = emails.split(/ |, |, /)
    split_email.uniq
  end
end
