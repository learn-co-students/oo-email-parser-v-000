class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_list = []
    self.emails.gsub(",", "").split(" ").each do |email|
      if email_list.include?(email) == false
       email_list << email
      end
    end
    email_list
  end
  
end
