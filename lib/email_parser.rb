class EmailParser
  attr_accessor :emails

  def initialize(emails)
    self.emails = emails
  end

  def parse
    self.emails.split(/ |, |,/).uniq
  end


end

