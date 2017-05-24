# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#input string of emails "samson.yuwono@gmail.com", "john@doe.com"
#return ["samson.ywuono@gmail.com, john@doe.com"]

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    parse_emails = @emails.split(/[\s,]/).uniq
    parse_emails.reject { |element| element == ""}
  end

end
