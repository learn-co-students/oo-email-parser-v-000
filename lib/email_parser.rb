# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :email_string, :email_array

  def initialize(emails)
    @email_string = emails
  end

  def parse
    @email_array = @email_string.split(/[\s+\,]/).reject{|s| s.empty?}
    @email_array.uniq
  end

end
