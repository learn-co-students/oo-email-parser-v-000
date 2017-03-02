# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  @@all = []
  attr_accessor :email_account_list, :parsed_emails

  def initialize(email_account_list)
    @email_account_list = email_account_list
    @@all << self
  end

  def parse
    @parsed_emails = @email_account_list.split(/,\s|\s/)
    @parsed_emails = @parsed_emails.uniq
    @parsed_emails
  end

end
