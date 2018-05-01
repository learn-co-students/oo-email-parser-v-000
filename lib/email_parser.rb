class EmailParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.gsub(/([\z,])/, "").split(" ").uniq
  end
end
