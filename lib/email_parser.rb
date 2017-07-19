# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor

  def initialize(emails)
    @emails = emails
  end

  def parse
    email = @emails.split(" ")
    email.map {|emails| emails = emails.chomp!(",")}
    email = email.uniq
    email
  end

end
