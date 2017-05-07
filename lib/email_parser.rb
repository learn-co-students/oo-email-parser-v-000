# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails #sets and gets emails

  def initialize(emails)
    @emails = emails #initialize new emails
  end

  def parse
    emails = @emails.split(/\s|, |""/).uniq
    #use regex to remove white space..returns uniq emails
  end

end
