# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor = :emails

  def initialize(emails)
    @emails = emails;
  end

  def parse
    seperated_emails = @emails.split(/[ ,]/)
    unique_emails = seperated_emails.uniq
    unique_emails.reject {|email| email.empty?}
  end
end
