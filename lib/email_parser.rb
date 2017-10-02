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
    e_array = []
    e_array = @emails.split(/[,\s]/)
    e_array = e_array.reject {|i| i == ""}
    e_array.uniq
  end
end
