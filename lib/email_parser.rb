class EmailParser
  attr_accessor :emails

  def initialize(email_list)
    @emails = email_list.split(/[,\s]+/)
  end

  def parse
    self.emails.uniq
  end

end
