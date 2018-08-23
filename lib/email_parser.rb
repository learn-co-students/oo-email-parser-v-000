class EmailParser
  attr_accessor :name, :csv_emails

  def initialize(csv_emails)
    @name = name
    @csv_emails = csv_emails
  end

  def parse
    csv_emails.delete(',').split.flatten.uniq
  end

end
