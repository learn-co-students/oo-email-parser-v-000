class EmailParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    emails.split(/[\s,]/).delete_if {|x| x == ""}.uniq
  end
  
end