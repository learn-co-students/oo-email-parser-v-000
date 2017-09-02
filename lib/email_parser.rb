class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split.collect{|email| email.split(",")}.flatten.uniq
  end

end
