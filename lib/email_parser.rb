# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :email_string, :email_arr

  def initialize(email_list)
    @email_string = email_list
  end

  def parse
    #this is working
    #email_arr = @email_string.split(/[\s,]+/)
    email_arr = @email_string.split(/[\s,]+/)
    email_arr.uniq
  end
end
