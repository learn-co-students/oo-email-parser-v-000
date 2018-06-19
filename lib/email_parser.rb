class EmailParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse 
    list = []
    @emails.split(/\b\W?\s\b/).each {|email| list << email unless list.include? email}
    list
  end
end