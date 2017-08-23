# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  def initialize(string_of_emails)
    @email_string = string_of_emails
  end

  def parse
    @email_string.split(/[,\s+]/).uniq.delete_if{|x| x.length == 0}
  end
end
