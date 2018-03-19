require "pry"
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_array = []
    if @emails.include?(",")
      @emails.gsub! ' ', ','
      @emails.gsub! ',,', ','
      @emails.gsub! ',', ', '
      email_array = @emails.split(", ")
    else
      email_array = @emails.split(" ")
    end
    parsed_emails = email_array.uniq
    parsed_emails
  end
end
