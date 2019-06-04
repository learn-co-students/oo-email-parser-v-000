class EmailParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    parsed_emails = []
    parsed_emails = self.emails.split(",")
    parsed_emails.map!{ |element| element.gsub(/, /, '') }
    parsed_emails = self.emails.split(" ")
    parsed_emails.map!{ |element| element.gsub(/\s/, '') }
    parsed_emails.map!{ |element| element.gsub(/,/, '') }
    parsed_emails.uniq
  end
  
end
  