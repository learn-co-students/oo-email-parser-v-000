class EmailParser
  attr_accessor :email_list

  def initialize(emails)
    @email_list = emails
  end

  def parse
    email_list.split(/[,\s]+/).uniq

  end

end
