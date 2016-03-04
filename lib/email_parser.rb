# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
#
class EmailParser
  attr_accessor :email_string
  @emails = []

  def initialize(emails)
    @email_string = emails
  end

  def parse
    #split email string into individual emails
    @emails = @email_string.split(/[, ]+/)
    @emails.uniq
  end

end
