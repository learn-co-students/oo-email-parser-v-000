class EmailParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    self.emails.scan(/\w*@\w*.com/).uniq
  end
end