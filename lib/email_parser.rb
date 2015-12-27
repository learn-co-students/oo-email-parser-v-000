class EmailParser

  attr_accessor :emails
  

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.scan(/\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b/).uniq
  end
end
