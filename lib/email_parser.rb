# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
class EmailParser
  attr_accessor :list, :email_string

  def initialize(emails)
    @email_string = emails
  end

  def parse
    @list = @email_string.split(/\s|,\s/)
    @list = @list.uniq
  end
end

emails = EmailParser.new("avi@test.com, arel@test.com test@avi.com, test@arel.com")
emails.parse