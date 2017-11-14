# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  def initialize(email_list)
    @email_list = email_list
  end

  def parse
    email_array = @email_list.split(/[,\s]+/)#regex that matches , character and also multiple spaces
    email_array.uniq#take array make it unique
  end
end
