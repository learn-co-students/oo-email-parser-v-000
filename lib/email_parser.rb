# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
    #email_list1.emails = emails_string
  end

  def parse
    parsed_data = emails.split(/,*\s/)
    parsed_data.uniq
  end
end
