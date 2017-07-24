class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails.split(/,?\s/)
  end

  def parse
    @emails.uniq
  end

end
