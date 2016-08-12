# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :email_list

  def initialize(email_data)
    @email_list = email_data
  end

  def parse
      e = []
      e = @email_list.split(/[,\s]/)
      e = e.reject {|i| i==""}
      e.uniq
  end

end
