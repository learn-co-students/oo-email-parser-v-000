# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :email_data

  def initialize(email_data)
    @email_data = email_data
  end

  def parse
    email_array = @email_data.split(/,\s|\s/)
    email_array.uniq
  end

end
