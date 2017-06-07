# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email
  def initialize(emails)
    @emails = emails
  end
  def parse
    result = @emails.split(" ")
    result[0] = result[0].chomp(",")
    if result[2] != nil
      result[2] = result[2].chomp(",")
    end
    result = result.uniq

    result
  end
end
