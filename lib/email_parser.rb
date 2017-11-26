class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    array = emails.split(/[\s,]+/)
    array.uniq
  end
end
