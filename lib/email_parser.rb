class EmailParser

  attr_accessor :emails, :parser
  
  @@all = []

  def initialize(emails)
    @emails = emails
    @@all << emails
  end

  def parse
    @emails.split(/[\s,]+/).uniq
  end

end