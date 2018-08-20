class EmailParser
  attr_accessor :emails
  @@email_list = []

  def initialize(emails)
    @emails = emails
    @@email_list << self
  end

  def parse
    self.emails.split(/[,\s]/).delete_if {|x| x == ""}.uniq
  end

  def self.all
    @@email_list
  end
end
