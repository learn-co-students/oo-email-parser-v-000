class EmailParser
  attr_accessor :email_list

  def initialize(emails)
    @email_list = emails
  end

  def parse
    all_emails = []
    emails = @email_list.split(/[,\s]/)

    emails.each do |email|
      if email == ""
        emails.delete(email)
      end
    end
    emails.each do |email|
      all_emails << email
    end
    all_emails = all_emails.uniq
  end


end
