class EmailParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    if emails.include?(',')
      email_list = emails.delete! ','
    end
    email_list = emails.split(' ')
    email_list.uniq
  end
end

