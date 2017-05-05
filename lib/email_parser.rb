# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  def self.new(email_string)
    @emails = email_string
    self
  end

  def self.parse
    email_arr = @emails.split(/[,\s]/)
    email_arr.delete("")
    email_arr.uniq
  end
end
