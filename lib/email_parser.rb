class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
  #divides email string into substrings based on a comma and white space.
    email_array = @emails.split(/,\s|\s/)
  #parses and removes duplicate emails
    @emails = email_array.uniq
  end
end
