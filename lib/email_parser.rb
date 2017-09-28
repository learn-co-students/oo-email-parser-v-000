class EmailParser

  attr_accessor :emails

  @@all = []
  @@emails = []

  def self.all
    @@all
  end

  def initialize(emails)
    @emails = emails
    @@all << self
  end





  def parse
    csv = @emails.split(/\,\s|\s/)
    csv.uniq



  end

end
