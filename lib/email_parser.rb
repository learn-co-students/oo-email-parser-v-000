class EmailParser
  attr_reader :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    email_array = []
    email_array = emails.split(/[,\s]/).map { | address | address }
    email_array.reject! { |blank| blank.empty? }
    email_array.uniq
  end
  
end