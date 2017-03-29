# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email
  @@all = []

  def initialize(string)
    @email=string
  end

  def parse
    emails = nil
    emails = @email.split(/[,\s]/)
    emails.delete("")
    emails.uniq

  end

end
