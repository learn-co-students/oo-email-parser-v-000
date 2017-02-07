class EmailParser

  attr_accessor :emails

  def initialize(text)
    @emails = text
  end

  def parse
    emails = @emails.split(/[,\s]/)
    emails.keep_if {|email| email.length > 0}
    emails.uniq
  end

end
