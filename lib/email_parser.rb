class EmailParser

attr_accessor :list_of_emails

  def initialize(string_of_emails)
    @list_of_emails= string_of_emails
  end

  def parse
    @list_of_emails.split(/[ ,]+/).uniq
  end

end
